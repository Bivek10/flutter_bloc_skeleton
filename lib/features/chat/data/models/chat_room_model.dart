import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/chat_room.dart';

part 'chat_room_model.freezed.dart';
part 'chat_room_model.g.dart';

@freezed
class ChatRoomModel with _$ChatRoomModel {
  const factory ChatRoomModel({
    required String id,
    required String title,
    String? lastMessage,
    required int lastUpdatedAt,
    required String type,
    required List<String> participants,
  }) = _ChatRoomModel;

  const ChatRoomModel._();

  factory ChatRoomModel.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomModelFromJson(json);

  ChatRoom toEntity() => ChatRoom(
        id: id,
        title: title,
        lastMessage: lastMessage,
        lastUpdatedAt: DateTime.fromMillisecondsSinceEpoch(lastUpdatedAt),
        type: type,
        participants: participants,
      );

  factory ChatRoomModel.fromEntity(ChatRoom entity) => ChatRoomModel(
        id: entity.id,
        title: entity.title,
        lastMessage: entity.lastMessage,
        lastUpdatedAt: entity.lastUpdatedAt.millisecondsSinceEpoch,
        type: entity.type,
        participants: entity.participants,
      );
}
