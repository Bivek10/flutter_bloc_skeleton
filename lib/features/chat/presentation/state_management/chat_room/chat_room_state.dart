part of 'chat_room_bloc.dart';

@freezed
class ChatRoomState with _$ChatRoomState {
  const factory ChatRoomState.initial() = ChatRoomInitial;
  const factory ChatRoomState.loading() = ChatRoomLoading;
  const factory ChatRoomState.loaded(List<ChatMessage> messages) = ChatRoomLoaded;
  const factory ChatRoomState.error(String message) = ChatRoomError;
}
