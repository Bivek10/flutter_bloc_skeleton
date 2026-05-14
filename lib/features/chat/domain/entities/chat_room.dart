import 'package:equatable/equatable.dart';

class ChatRoom extends Equatable {
  final String id;
  final String title;
  final String? lastMessage;
  final DateTime lastUpdatedAt;
  final String type; // 'individual' or 'work'
  final List<String> participants;

  const ChatRoom({
    required this.id,
    required this.title,
    this.lastMessage,
    required this.lastUpdatedAt,
    required this.type,
    required this.participants,
  });

  @override
  List<Object?> get props => [id, title, lastMessage, lastUpdatedAt, type, participants];
}
