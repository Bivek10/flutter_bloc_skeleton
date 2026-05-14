import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/chat_list_page.dart';
import '../pages/chat_room_page.dart';
import 'chat_route_paths.dart';

abstract final class ChatRoutes {
  static List<GoRoute> get routes => [
    GoRoute(
      path: ChatRoute.chatList.path,
      name: ChatRoute.chatList.routeName,
      builder: (BuildContext context, GoRouterState state) => const ChatListPage(),
    ),
    GoRoute(
      path: ChatRoute.chatRoom.path,
      name: ChatRoute.chatRoom.routeName,
      builder: (BuildContext context, GoRouterState state) {
        final roomId = state.pathParameters['roomId']!;
        return ChatRoomPage(roomId: roomId);
      },
    ),
  ];
}
