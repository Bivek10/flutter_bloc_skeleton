import '../../domain/entities/chat_room.dart';
import '../../domain/entities/chat_message.dart';

abstract class ChatRepository {
  Stream<List<ChatRoom>> getChatRooms(String userId);
  Stream<List<ChatMessage>> getMessages(String roomId);
  Future<void> sendMessage(String roomId, ChatMessage message);
  Stream<int> getUnseenCount(String userId, String roomId);
  Future<void> markAsSeen(String userId, String roomId);
  void trackPresence(String userId);
}

