import 'package:firebase_database/firebase_database.dart';
import '../models/chat_room_model.dart';
import '../models/chat_message_model.dart';

class FirebaseChatService {
  final FirebaseDatabase _database;

  FirebaseChatService(this._database);

  Stream<List<ChatRoomModel>> getRooms(String userId) {
    // Note: In a real app, we might want to use a more optimized query
    // or store room IDs per user to avoid fetching all rooms.
    return _database.ref('rooms').onValue.map((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>? ?? {};
      return data.entries.map((entry) {
        final roomData = Map<String, dynamic>.from(entry.value as Map);
        // Ensure participants is a List<String>
        if (roomData['participants'] is Map) {
          roomData['participants'] =
              (roomData['participants'] as Map).keys.cast<String>().toList();
        } else if (roomData['participants'] is List) {
          roomData['participants'] = (roomData['participants'] as List).cast<String>();
        }

        return ChatRoomModel.fromJson({...roomData, 'id': entry.key});
      }).where((room) => room.participants.contains(userId)).toList();
    });
  }

  Stream<List<ChatMessageModel>> getMessages(String roomId) {
    return _database.ref('messages/$roomId').onValue.map((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>? ?? {};
      return data.entries.map((entry) {
        final msgData = Map<String, dynamic>.from(entry.value as Map);
        return ChatMessageModel.fromJson(
          {...msgData, 'id': entry.key, 'roomId': roomId},
        );
      }).toList()
        ..sort((a, b) => b.timestamp.compareTo(a.timestamp));
    });
  }

  Future<void> sendMessage(String roomId, ChatMessageModel message) async {
    final msgRef = _database.ref('messages/$roomId').push();
    final messageData = message.toJson()..remove('id');
    // Use server timestamp for the message if not provided
    if (messageData['timestamp'] == 0) {
      messageData['timestamp'] = ServerValue.timestamp;
    }

    await msgRef.set(messageData);

    // Update room's last message and timestamp
    await _database.ref('rooms/$roomId').update({
      'lastMessage': message.text,
      'lastUpdatedAt': ServerValue.timestamp,
    });

    // Increment unseen counts for other participants
    final roomSnapshot = await _database.ref('rooms/$roomId').get();
    if (roomSnapshot.exists) {
      final roomData = roomSnapshot.value as Map;
      final participantsData = roomData['participants'];
      List<String> participants = [];
      if (participantsData is Map) {
        participants = participantsData.keys.cast<String>().toList();
      } else if (participantsData is List) {
        participants = participantsData.cast<String>();
      }

      for (final participantId in participants) {
        if (participantId != message.senderId) {
          await _database
              .ref('unseen_counts/$participantId/$roomId')
              .set(ServerValue.increment(1));
        }
      }
    }
  }

  void trackPresence(String userId) {
    final presenceRef = _database.ref('presence/$userId');
    final connectedRef = _database.ref('.info/connected');
    connectedRef.onValue.listen((event) {
      final connected = event.snapshot.value as bool? ?? false;
      if (connected) {
        presenceRef.onDisconnect().set({
          'status': 'offline',
          'lastChanged': ServerValue.timestamp,
        });
        presenceRef.set({
          'status': 'online',
          'lastChanged': ServerValue.timestamp,
        });
      }
    });
  }

  Stream<int> getUnseenCount(String userId, String roomId) {
    return _database.ref('unseen_counts/$userId/$roomId').onValue.map((event) {
      return (event.snapshot.value as int?) ?? 0;
    });
  }

  
  Future<void> markAsSeen(String userId, String roomId) async {
    await _database.ref('unseen_counts/$userId/$roomId').set(0);
  }
}
