
import '../../core/di/service_locator.dart';
import 'data/datasources/firebase_chat_service.dart';
import 'data/repositories/chat_repository_impl.dart';
import 'domain/repositories/chat_repository.dart';
import 'presentation/state_management/chat_list/chat_list_bloc.dart';
import 'presentation/state_management/chat_room/chat_room_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

void initChat() {
  // External
  if (!sl.isRegistered<FirebaseDatabase>()) {
    sl.registerLazySingleton<FirebaseDatabase>(() => FirebaseDatabase.instance);
  }

  // Data sources
  sl.registerLazySingleton<FirebaseChatService>(
    () => FirebaseChatService(sl<FirebaseDatabase>()),
  );

  // Repositories
  sl.registerLazySingleton<ChatRepository>(
    () => ChatRepositoryImpl(sl<FirebaseChatService>()),
  );

  // Blocs
  sl.registerFactory(
    () => ChatListBloc(chatRepository: sl<ChatRepository>()),
  );
  
  sl.registerFactory(
    () => ChatRoomBloc(chatRepository: sl<ChatRepository>()),
  );
}
