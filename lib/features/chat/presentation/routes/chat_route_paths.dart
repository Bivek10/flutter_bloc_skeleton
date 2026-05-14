enum ChatRoute {
  chatList,
  chatRoom;

  String get path => switch (this) {
        ChatRoute.chatList => '/chat',
        ChatRoute.chatRoom => '/chat/:roomId',
      };

  String get routeName => switch (this) {
        ChatRoute.chatList => 'ChatList',
        ChatRoute.chatRoom => 'ChatRoom',
      };
}
