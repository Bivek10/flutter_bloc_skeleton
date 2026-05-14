import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/service_locator.dart';
import '../../../auth/presentation/state_management/auth_bloc.dart';
import '../state_management/chat_room/chat_room_bloc.dart';

class ChatRoomPage extends StatefulWidget {
  final String roomId;

  const ChatRoomPage({super.key, required this.roomId});

  @override
  State<ChatRoomPage> createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userId = context.read<AuthBloc>().state.maybeWhen(
          authenticated: (user) => user.id.toString(),
          orElse: () => 'guest',
        );

    return BlocProvider(
      create: (context) => sl<ChatRoomBloc>()
        ..add(FetchMessages(widget.roomId))
        ..add(MarkAsSeen(userId, widget.roomId)),
      child: Scaffold(
        appBar: AppBar(title: const Text('Chat Room')),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<ChatRoomBloc, ChatRoomState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const Center(child: CircularProgressIndicator()),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (messages) {
                      if (messages.isEmpty) {
                        return const Center(child: Text('No messages yet'));
                      }
                      return ListView.builder(
                        reverse: true,
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final message = messages[index];
                          final isMe = message.senderId == userId;
                          return _MessageBubble(message: message, isMe: isMe);
                        },
                      );
                    },
                    error: (message) => Center(child: Text(message)),
                  );
                },
              ),
            ),
            _buildMessageInput(context, userId),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageInput(BuildContext context, String userId) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 4,
            color: Colors.black.withAlpha(25),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Type a message...',
                border: InputBorder.none,
              ),
              onSubmitted: (_) => _sendMessage(context, userId),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            color: Theme.of(context).primaryColor,
            onPressed: () => _sendMessage(context, userId),
          ),
        ],
      ),
    );
  }

  void _sendMessage(BuildContext context, String userId) {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      context.read<ChatRoomBloc>().add(
            SendMessage(widget.roomId, text, userId),
          );
      _messageController.clear();
    }
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }
}

class _MessageBubble extends StatelessWidget {
  final dynamic message;
  final bool isMe;

  const _MessageBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isMe ? Theme.of(context).primaryColor : Colors.grey[300],
          borderRadius: BorderRadius.circular(20).copyWith(
            bottomRight: isMe ? const Radius.circular(0) : const Radius.circular(20),
            bottomLeft: isMe ? const Radius.circular(20) : const Radius.circular(0),
          ),
        ),
        child: Text(
          message.text,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black87,
          ),
        ),
      ),
    );
  }
}
