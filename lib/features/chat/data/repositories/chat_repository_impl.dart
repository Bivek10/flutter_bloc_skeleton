import '../../domain/entities/chat_message.dart';
import '../../domain/entities/chat_room.dart';
import '../../domain/repositories/chat_repository.dart';
import '../datasources/firebase_chat_service.dart';
import '../models/chat_message_model.dart';

class ChatRepositoryImpl implements ChatRepository {
  final FirebaseChatService _chatService;

  ChatRepositoryImpl(this._chatService);

  @override
  Stream<List<ChatRoom>> getChatRooms(String userId) {
    return _chatService.getRooms(userId).map(
          (models) => models.map((model) => model.toEntity()).toList(),
        );
  }

  @override
  Stream<List<ChatMessage>> getMessages(String roomId) {
    return _chatService.getMessages(roomId).map(
          (models) => models.map((model) => model.toEntity()).toList(),
        );
  }

  @override
  Future<void> sendMessage(String roomId, ChatMessage message) {
    return _chatService.sendMessage(
      roomId,
      ChatMessageModel.fromEntity(message),
    );
  }

  @override
  Stream<int> getUnseenCount(String userId, String roomId) {
    return _chatService.getUnseenCount(userId, roomId);
  }

  @override
  Future<void> markAsSeen(String userId, String roomId) {
    return _chatService.markAsSeen(userId, roomId);
  }

  @override
  void trackPresence(String userId) {
    _chatService.trackPresence(userId);
  }
}

