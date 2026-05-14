part of 'chat_list_bloc.dart';

@freezed
class ChatListState with _$ChatListState {
  const factory ChatListState.initial() = ChatListInitial;
  const factory ChatListState.loading() = ChatListLoading;
  const factory ChatListState.loaded(List<ChatRoom> rooms) = ChatListLoaded;
  const factory ChatListState.error(String message) = ChatListError;
}
