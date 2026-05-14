import 'package:equatable/equatable.dart';

class ChatMessage extends Equatable {
  final String id;
  final String senderId;
  final String text;
  final DateTime timestamp;
  final String roomId;

  const ChatMessage({
    required this.id,
    required this.senderId,
    required this.text,
    required this.timestamp,
    required this.roomId,
  });

  @override
  List<Object?> get props => [id, senderId, text, timestamp, roomId];
}
