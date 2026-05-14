// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatRoomEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomEvent()';
}


}

/// @nodoc
class $ChatRoomEventCopyWith<$Res>  {
$ChatRoomEventCopyWith(ChatRoomEvent _, $Res Function(ChatRoomEvent) __);
}


/// Adds pattern-matching-related methods to [ChatRoomEvent].
extension ChatRoomEventPatterns on ChatRoomEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchMessages value)?  fetchMessages,TResult Function( MessagesUpdated value)?  messagesUpdated,TResult Function( SendMessage value)?  sendMessage,TResult Function( MarkAsSeen value)?  markAsSeen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchMessages() when fetchMessages != null:
return fetchMessages(_that);case MessagesUpdated() when messagesUpdated != null:
return messagesUpdated(_that);case SendMessage() when sendMessage != null:
return sendMessage(_that);case MarkAsSeen() when markAsSeen != null:
return markAsSeen(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchMessages value)  fetchMessages,required TResult Function( MessagesUpdated value)  messagesUpdated,required TResult Function( SendMessage value)  sendMessage,required TResult Function( MarkAsSeen value)  markAsSeen,}){
final _that = this;
switch (_that) {
case FetchMessages():
return fetchMessages(_that);case MessagesUpdated():
return messagesUpdated(_that);case SendMessage():
return sendMessage(_that);case MarkAsSeen():
return markAsSeen(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchMessages value)?  fetchMessages,TResult? Function( MessagesUpdated value)?  messagesUpdated,TResult? Function( SendMessage value)?  sendMessage,TResult? Function( MarkAsSeen value)?  markAsSeen,}){
final _that = this;
switch (_that) {
case FetchMessages() when fetchMessages != null:
return fetchMessages(_that);case MessagesUpdated() when messagesUpdated != null:
return messagesUpdated(_that);case SendMessage() when sendMessage != null:
return sendMessage(_that);case MarkAsSeen() when markAsSeen != null:
return markAsSeen(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String roomId)?  fetchMessages,TResult Function( List<ChatMessage> messages)?  messagesUpdated,TResult Function( String roomId,  String text,  String senderId)?  sendMessage,TResult Function( String userId,  String roomId)?  markAsSeen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchMessages() when fetchMessages != null:
return fetchMessages(_that.roomId);case MessagesUpdated() when messagesUpdated != null:
return messagesUpdated(_that.messages);case SendMessage() when sendMessage != null:
return sendMessage(_that.roomId,_that.text,_that.senderId);case MarkAsSeen() when markAsSeen != null:
return markAsSeen(_that.userId,_that.roomId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String roomId)  fetchMessages,required TResult Function( List<ChatMessage> messages)  messagesUpdated,required TResult Function( String roomId,  String text,  String senderId)  sendMessage,required TResult Function( String userId,  String roomId)  markAsSeen,}) {final _that = this;
switch (_that) {
case FetchMessages():
return fetchMessages(_that.roomId);case MessagesUpdated():
return messagesUpdated(_that.messages);case SendMessage():
return sendMessage(_that.roomId,_that.text,_that.senderId);case MarkAsSeen():
return markAsSeen(_that.userId,_that.roomId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String roomId)?  fetchMessages,TResult? Function( List<ChatMessage> messages)?  messagesUpdated,TResult? Function( String roomId,  String text,  String senderId)?  sendMessage,TResult? Function( String userId,  String roomId)?  markAsSeen,}) {final _that = this;
switch (_that) {
case FetchMessages() when fetchMessages != null:
return fetchMessages(_that.roomId);case MessagesUpdated() when messagesUpdated != null:
return messagesUpdated(_that.messages);case SendMessage() when sendMessage != null:
return sendMessage(_that.roomId,_that.text,_that.senderId);case MarkAsSeen() when markAsSeen != null:
return markAsSeen(_that.userId,_that.roomId);case _:
  return null;

}
}

}

/// @nodoc


class FetchMessages implements ChatRoomEvent {
  const FetchMessages(this.roomId);
  

 final  String roomId;

/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMessagesCopyWith<FetchMessages> get copyWith => _$FetchMessagesCopyWithImpl<FetchMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMessages&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,roomId);

@override
String toString() {
  return 'ChatRoomEvent.fetchMessages(roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class $FetchMessagesCopyWith<$Res> implements $ChatRoomEventCopyWith<$Res> {
  factory $FetchMessagesCopyWith(FetchMessages value, $Res Function(FetchMessages) _then) = _$FetchMessagesCopyWithImpl;
@useResult
$Res call({
 String roomId
});




}
/// @nodoc
class _$FetchMessagesCopyWithImpl<$Res>
    implements $FetchMessagesCopyWith<$Res> {
  _$FetchMessagesCopyWithImpl(this._self, this._then);

  final FetchMessages _self;
  final $Res Function(FetchMessages) _then;

/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,}) {
  return _then(FetchMessages(
null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MessagesUpdated implements ChatRoomEvent {
  const MessagesUpdated(final  List<ChatMessage> messages): _messages = messages;
  

 final  List<ChatMessage> _messages;
 List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagesUpdatedCopyWith<MessagesUpdated> get copyWith => _$MessagesUpdatedCopyWithImpl<MessagesUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagesUpdated&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatRoomEvent.messagesUpdated(messages: $messages)';
}


}

/// @nodoc
abstract mixin class $MessagesUpdatedCopyWith<$Res> implements $ChatRoomEventCopyWith<$Res> {
  factory $MessagesUpdatedCopyWith(MessagesUpdated value, $Res Function(MessagesUpdated) _then) = _$MessagesUpdatedCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages
});




}
/// @nodoc
class _$MessagesUpdatedCopyWithImpl<$Res>
    implements $MessagesUpdatedCopyWith<$Res> {
  _$MessagesUpdatedCopyWithImpl(this._self, this._then);

  final MessagesUpdated _self;
  final $Res Function(MessagesUpdated) _then;

/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(MessagesUpdated(
null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

/// @nodoc


class SendMessage implements ChatRoomEvent {
  const SendMessage(this.roomId, this.text, this.senderId);
  

 final  String roomId;
 final  String text;
 final  String senderId;

/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageCopyWith<SendMessage> get copyWith => _$SendMessageCopyWithImpl<SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessage&&(identical(other.roomId, roomId) || other.roomId == roomId)&&(identical(other.text, text) || other.text == text)&&(identical(other.senderId, senderId) || other.senderId == senderId));
}


@override
int get hashCode => Object.hash(runtimeType,roomId,text,senderId);

@override
String toString() {
  return 'ChatRoomEvent.sendMessage(roomId: $roomId, text: $text, senderId: $senderId)';
}


}

/// @nodoc
abstract mixin class $SendMessageCopyWith<$Res> implements $ChatRoomEventCopyWith<$Res> {
  factory $SendMessageCopyWith(SendMessage value, $Res Function(SendMessage) _then) = _$SendMessageCopyWithImpl;
@useResult
$Res call({
 String roomId, String text, String senderId
});




}
/// @nodoc
class _$SendMessageCopyWithImpl<$Res>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(this._self, this._then);

  final SendMessage _self;
  final $Res Function(SendMessage) _then;

/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? roomId = null,Object? text = null,Object? senderId = null,}) {
  return _then(SendMessage(
null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MarkAsSeen implements ChatRoomEvent {
  const MarkAsSeen(this.userId, this.roomId);
  

 final  String userId;
 final  String roomId;

/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkAsSeenCopyWith<MarkAsSeen> get copyWith => _$MarkAsSeenCopyWithImpl<MarkAsSeen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkAsSeen&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.roomId, roomId) || other.roomId == roomId));
}


@override
int get hashCode => Object.hash(runtimeType,userId,roomId);

@override
String toString() {
  return 'ChatRoomEvent.markAsSeen(userId: $userId, roomId: $roomId)';
}


}

/// @nodoc
abstract mixin class $MarkAsSeenCopyWith<$Res> implements $ChatRoomEventCopyWith<$Res> {
  factory $MarkAsSeenCopyWith(MarkAsSeen value, $Res Function(MarkAsSeen) _then) = _$MarkAsSeenCopyWithImpl;
@useResult
$Res call({
 String userId, String roomId
});




}
/// @nodoc
class _$MarkAsSeenCopyWithImpl<$Res>
    implements $MarkAsSeenCopyWith<$Res> {
  _$MarkAsSeenCopyWithImpl(this._self, this._then);

  final MarkAsSeen _self;
  final $Res Function(MarkAsSeen) _then;

/// Create a copy of ChatRoomEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? roomId = null,}) {
  return _then(MarkAsSeen(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,null == roomId ? _self.roomId : roomId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChatRoomState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomState()';
}


}

/// @nodoc
class $ChatRoomStateCopyWith<$Res>  {
$ChatRoomStateCopyWith(ChatRoomState _, $Res Function(ChatRoomState) __);
}


/// Adds pattern-matching-related methods to [ChatRoomState].
extension ChatRoomStatePatterns on ChatRoomState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatRoomInitial value)?  initial,TResult Function( ChatRoomLoading value)?  loading,TResult Function( ChatRoomLoaded value)?  loaded,TResult Function( ChatRoomError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatRoomInitial() when initial != null:
return initial(_that);case ChatRoomLoading() when loading != null:
return loading(_that);case ChatRoomLoaded() when loaded != null:
return loaded(_that);case ChatRoomError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatRoomInitial value)  initial,required TResult Function( ChatRoomLoading value)  loading,required TResult Function( ChatRoomLoaded value)  loaded,required TResult Function( ChatRoomError value)  error,}){
final _that = this;
switch (_that) {
case ChatRoomInitial():
return initial(_that);case ChatRoomLoading():
return loading(_that);case ChatRoomLoaded():
return loaded(_that);case ChatRoomError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatRoomInitial value)?  initial,TResult? Function( ChatRoomLoading value)?  loading,TResult? Function( ChatRoomLoaded value)?  loaded,TResult? Function( ChatRoomError value)?  error,}){
final _that = this;
switch (_that) {
case ChatRoomInitial() when initial != null:
return initial(_that);case ChatRoomLoading() when loading != null:
return loading(_that);case ChatRoomLoaded() when loaded != null:
return loaded(_that);case ChatRoomError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ChatMessage> messages)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatRoomInitial() when initial != null:
return initial();case ChatRoomLoading() when loading != null:
return loading();case ChatRoomLoaded() when loaded != null:
return loaded(_that.messages);case ChatRoomError() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ChatMessage> messages)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ChatRoomInitial():
return initial();case ChatRoomLoading():
return loading();case ChatRoomLoaded():
return loaded(_that.messages);case ChatRoomError():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ChatMessage> messages)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ChatRoomInitial() when initial != null:
return initial();case ChatRoomLoading() when loading != null:
return loading();case ChatRoomLoaded() when loaded != null:
return loaded(_that.messages);case ChatRoomError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ChatRoomInitial implements ChatRoomState {
  const ChatRoomInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomState.initial()';
}


}




/// @nodoc


class ChatRoomLoading implements ChatRoomState {
  const ChatRoomLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatRoomState.loading()';
}


}




/// @nodoc


class ChatRoomLoaded implements ChatRoomState {
  const ChatRoomLoaded(final  List<ChatMessage> messages): _messages = messages;
  

 final  List<ChatMessage> _messages;
 List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomLoadedCopyWith<ChatRoomLoaded> get copyWith => _$ChatRoomLoadedCopyWithImpl<ChatRoomLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomLoaded&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'ChatRoomState.loaded(messages: $messages)';
}


}

/// @nodoc
abstract mixin class $ChatRoomLoadedCopyWith<$Res> implements $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomLoadedCopyWith(ChatRoomLoaded value, $Res Function(ChatRoomLoaded) _then) = _$ChatRoomLoadedCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages
});




}
/// @nodoc
class _$ChatRoomLoadedCopyWithImpl<$Res>
    implements $ChatRoomLoadedCopyWith<$Res> {
  _$ChatRoomLoadedCopyWithImpl(this._self, this._then);

  final ChatRoomLoaded _self;
  final $Res Function(ChatRoomLoaded) _then;

/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(ChatRoomLoaded(
null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,
  ));
}


}

/// @nodoc


class ChatRoomError implements ChatRoomState {
  const ChatRoomError(this.message);
  

 final  String message;

/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatRoomErrorCopyWith<ChatRoomError> get copyWith => _$ChatRoomErrorCopyWithImpl<ChatRoomError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatRoomError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatRoomState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatRoomErrorCopyWith<$Res> implements $ChatRoomStateCopyWith<$Res> {
  factory $ChatRoomErrorCopyWith(ChatRoomError value, $Res Function(ChatRoomError) _then) = _$ChatRoomErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ChatRoomErrorCopyWithImpl<$Res>
    implements $ChatRoomErrorCopyWith<$Res> {
  _$ChatRoomErrorCopyWithImpl(this._self, this._then);

  final ChatRoomError _self;
  final $Res Function(ChatRoomError) _then;

/// Create a copy of ChatRoomState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ChatRoomError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
