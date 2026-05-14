part of 'chat_room_bloc.dart';

@freezed
class ChatRoomEvent with _$ChatRoomEvent {
  const factory ChatRoomEvent.fetchMessages(String roomId) = FetchMessages;
  const factory ChatRoomEvent.messagesUpdated(List<ChatMessage> messages) = MessagesUpdated;
  const factory ChatRoomEvent.sendMessage(String roomId, String text, String senderId) = SendMessage;
  const factory ChatRoomEvent.markAsSeen(String userId, String roomId) = MarkAsSeen;
}
