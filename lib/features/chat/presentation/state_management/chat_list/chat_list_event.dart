part of 'chat_list_bloc.dart';

@freezed
class ChatListEvent with _$ChatListEvent {
  const factory ChatListEvent.fetchRooms(String userId) = FetchRooms;
  const factory ChatListEvent.roomsUpdated(List<ChatRoom> rooms) = RoomsUpdated;
  const factory ChatListEvent.trackPresence(String userId) = TrackPresence;
}

