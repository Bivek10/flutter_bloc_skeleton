import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/chat_message.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    required String id,
    required String senderId,
    required String text,
    required int timestamp,
    required String roomId,
  }) = _ChatMessageModel;

  const ChatMessageModel._();

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);

  ChatMessage toEntity() => ChatMessage(
        id: id,
        senderId: senderId,
        text: text,
        timestamp: DateTime.fromMillisecondsSinceEpoch(timestamp),
        roomId: roomId,
      );

  factory ChatMessageModel.fromEntity(ChatMessage entity) => ChatMessageModel(
        id: entity.id,
        senderId: entity.senderId,
        text: entity.text,
        timestamp: entity.timestamp.millisecondsSinceEpoch,
        roomId: entity.roomId,
      );
}
