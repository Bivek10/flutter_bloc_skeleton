import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/service_locator.dart';
import '../../../auth/presentation/state_management/auth_bloc.dart';
import '../state_management/chat_list/chat_list_bloc.dart';
import '../routes/chat_route_paths.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userId = context.read<AuthBloc>().state.maybeWhen(
          authenticated: (user) => user.id.toString(),
          orElse: () => 'guest',
        );

    return BlocProvider(
      create: (context) => sl<ChatListBloc>()
        ..add(FetchRooms(userId))
        ..add(TrackPresence(userId)),
      child: Scaffold(

        appBar: AppBar(
          title: const Text('Chats'),
          elevation: 0,
        ),
        body: BlocBuilder<ChatListBloc, ChatListState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (rooms) {
                if (rooms.isEmpty) {
                  return const Center(child: Text('No conversations yet'));
                }
                return ListView.separated(
                  itemCount: rooms.length,
                  separatorBuilder: (context, index) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final room = rooms[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Text(room.title[0].toUpperCase()),
                      ),
                      title: Text(
                        room.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        room.lastMessage ?? 'Start a conversation',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(
                        _formatTime(room.lastUpdatedAt),
                        style: TextStyle(color: Colors.grey[600], fontSize: 12),
                      ),
                      onTap: () => context.pushNamed(
                        ChatRoute.chatRoom.routeName,
                        pathParameters: {'roomId': room.id},
                      ),
                    );
                  },
                );
              },
              error: (message) => Center(child: Text(message)),
            );
          },
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    if (dateTime.year == now.year && dateTime.month == now.month && dateTime.day == now.day) {
      return '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
    }
    return '${dateTime.day}/${dateTime.month}';
  }
}
