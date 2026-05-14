import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/chat_room.dart';
import '../../../domain/repositories/chat_repository.dart';

part 'chat_list_event.dart';
part 'chat_list_state.dart';
part 'chat_list_bloc.freezed.dart';

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  final ChatRepository _chatRepository;
  StreamSubscription? _roomsSubscription;

  ChatListBloc({required ChatRepository chatRepository})
      : _chatRepository = chatRepository,
        super(const ChatListInitial()) {
    on<FetchRooms>(_onFetchRooms);
    on<RoomsUpdated>(_onRoomsUpdated);
    on<TrackPresence>(_onTrackPresence);
  }


  Future<void> _onFetchRooms(FetchRooms event, Emitter<ChatListState> emit) async {
    emit(const ChatListLoading());
    await _roomsSubscription?.cancel();
    _roomsSubscription = _chatRepository.getChatRooms(event.userId).listen(
      (rooms) => add(RoomsUpdated(rooms)),
      onError: (error) => add(const RoomsUpdated([])), // Simplified error handling
    );
  }

  void _onRoomsUpdated(RoomsUpdated event, Emitter<ChatListState> emit) {
    emit(ChatListLoaded(event.rooms));
  }

  void _onTrackPresence(TrackPresence event, Emitter<ChatListState> emit) {
    _chatRepository.trackPresence(event.userId);
  }


  @override
  Future<void> close() {
    _roomsSubscription?.cancel();
    return super.close();
  }
}
