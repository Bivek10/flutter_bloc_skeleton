// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatListEvent()';
}


}

/// @nodoc
class $ChatListEventCopyWith<$Res>  {
$ChatListEventCopyWith(ChatListEvent _, $Res Function(ChatListEvent) __);
}


/// Adds pattern-matching-related methods to [ChatListEvent].
extension ChatListEventPatterns on ChatListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchRooms value)?  fetchRooms,TResult Function( RoomsUpdated value)?  roomsUpdated,TResult Function( TrackPresence value)?  trackPresence,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchRooms() when fetchRooms != null:
return fetchRooms(_that);case RoomsUpdated() when roomsUpdated != null:
return roomsUpdated(_that);case TrackPresence() when trackPresence != null:
return trackPresence(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchRooms value)  fetchRooms,required TResult Function( RoomsUpdated value)  roomsUpdated,required TResult Function( TrackPresence value)  trackPresence,}){
final _that = this;
switch (_that) {
case FetchRooms():
return fetchRooms(_that);case RoomsUpdated():
return roomsUpdated(_that);case TrackPresence():
return trackPresence(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchRooms value)?  fetchRooms,TResult? Function( RoomsUpdated value)?  roomsUpdated,TResult? Function( TrackPresence value)?  trackPresence,}){
final _that = this;
switch (_that) {
case FetchRooms() when fetchRooms != null:
return fetchRooms(_that);case RoomsUpdated() when roomsUpdated != null:
return roomsUpdated(_that);case TrackPresence() when trackPresence != null:
return trackPresence(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  fetchRooms,TResult Function( List<ChatRoom> rooms)?  roomsUpdated,TResult Function( String userId)?  trackPresence,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchRooms() when fetchRooms != null:
return fetchRooms(_that.userId);case RoomsUpdated() when roomsUpdated != null:
return roomsUpdated(_that.rooms);case TrackPresence() when trackPresence != null:
return trackPresence(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  fetchRooms,required TResult Function( List<ChatRoom> rooms)  roomsUpdated,required TResult Function( String userId)  trackPresence,}) {final _that = this;
switch (_that) {
case FetchRooms():
return fetchRooms(_that.userId);case RoomsUpdated():
return roomsUpdated(_that.rooms);case TrackPresence():
return trackPresence(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  fetchRooms,TResult? Function( List<ChatRoom> rooms)?  roomsUpdated,TResult? Function( String userId)?  trackPresence,}) {final _that = this;
switch (_that) {
case FetchRooms() when fetchRooms != null:
return fetchRooms(_that.userId);case RoomsUpdated() when roomsUpdated != null:
return roomsUpdated(_that.rooms);case TrackPresence() when trackPresence != null:
return trackPresence(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class FetchRooms implements ChatListEvent {
  const FetchRooms(this.userId);
  

 final  String userId;

/// Create a copy of ChatListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchRoomsCopyWith<FetchRooms> get copyWith => _$FetchRoomsCopyWithImpl<FetchRooms>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchRooms&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ChatListEvent.fetchRooms(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $FetchRoomsCopyWith<$Res> implements $ChatListEventCopyWith<$Res> {
  factory $FetchRoomsCopyWith(FetchRooms value, $Res Function(FetchRooms) _then) = _$FetchRoomsCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$FetchRoomsCopyWithImpl<$Res>
    implements $FetchRoomsCopyWith<$Res> {
  _$FetchRoomsCopyWithImpl(this._self, this._then);

  final FetchRooms _self;
  final $Res Function(FetchRooms) _then;

/// Create a copy of ChatListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(FetchRooms(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RoomsUpdated implements ChatListEvent {
  const RoomsUpdated(final  List<ChatRoom> rooms): _rooms = rooms;
  

 final  List<ChatRoom> _rooms;
 List<ChatRoom> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}


/// Create a copy of ChatListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoomsUpdatedCopyWith<RoomsUpdated> get copyWith => _$RoomsUpdatedCopyWithImpl<RoomsUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoomsUpdated&&const DeepCollectionEquality().equals(other._rooms, _rooms));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rooms));

@override
String toString() {
  return 'ChatListEvent.roomsUpdated(rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class $RoomsUpdatedCopyWith<$Res> implements $ChatListEventCopyWith<$Res> {
  factory $RoomsUpdatedCopyWith(RoomsUpdated value, $Res Function(RoomsUpdated) _then) = _$RoomsUpdatedCopyWithImpl;
@useResult
$Res call({
 List<ChatRoom> rooms
});




}
/// @nodoc
class _$RoomsUpdatedCopyWithImpl<$Res>
    implements $RoomsUpdatedCopyWith<$Res> {
  _$RoomsUpdatedCopyWithImpl(this._self, this._then);

  final RoomsUpdated _self;
  final $Res Function(RoomsUpdated) _then;

/// Create a copy of ChatListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rooms = null,}) {
  return _then(RoomsUpdated(
null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<ChatRoom>,
  ));
}


}

/// @nodoc


class TrackPresence implements ChatListEvent {
  const TrackPresence(this.userId);
  

 final  String userId;

/// Create a copy of ChatListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrackPresenceCopyWith<TrackPresence> get copyWith => _$TrackPresenceCopyWithImpl<TrackPresence>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrackPresence&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ChatListEvent.trackPresence(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $TrackPresenceCopyWith<$Res> implements $ChatListEventCopyWith<$Res> {
  factory $TrackPresenceCopyWith(TrackPresence value, $Res Function(TrackPresence) _then) = _$TrackPresenceCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$TrackPresenceCopyWithImpl<$Res>
    implements $TrackPresenceCopyWith<$Res> {
  _$TrackPresenceCopyWithImpl(this._self, this._then);

  final TrackPresence _self;
  final $Res Function(TrackPresence) _then;

/// Create a copy of ChatListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(TrackPresence(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ChatListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatListState()';
}


}

/// @nodoc
class $ChatListStateCopyWith<$Res>  {
$ChatListStateCopyWith(ChatListState _, $Res Function(ChatListState) __);
}


/// Adds pattern-matching-related methods to [ChatListState].
extension ChatListStatePatterns on ChatListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChatListInitial value)?  initial,TResult Function( ChatListLoading value)?  loading,TResult Function( ChatListLoaded value)?  loaded,TResult Function( ChatListError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChatListInitial() when initial != null:
return initial(_that);case ChatListLoading() when loading != null:
return loading(_that);case ChatListLoaded() when loaded != null:
return loaded(_that);case ChatListError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChatListInitial value)  initial,required TResult Function( ChatListLoading value)  loading,required TResult Function( ChatListLoaded value)  loaded,required TResult Function( ChatListError value)  error,}){
final _that = this;
switch (_that) {
case ChatListInitial():
return initial(_that);case ChatListLoading():
return loading(_that);case ChatListLoaded():
return loaded(_that);case ChatListError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChatListInitial value)?  initial,TResult? Function( ChatListLoading value)?  loading,TResult? Function( ChatListLoaded value)?  loaded,TResult? Function( ChatListError value)?  error,}){
final _that = this;
switch (_that) {
case ChatListInitial() when initial != null:
return initial(_that);case ChatListLoading() when loading != null:
return loading(_that);case ChatListLoaded() when loaded != null:
return loaded(_that);case ChatListError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ChatRoom> rooms)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChatListInitial() when initial != null:
return initial();case ChatListLoading() when loading != null:
return loading();case ChatListLoaded() when loaded != null:
return loaded(_that.rooms);case ChatListError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ChatRoom> rooms)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ChatListInitial():
return initial();case ChatListLoading():
return loading();case ChatListLoaded():
return loaded(_that.rooms);case ChatListError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ChatRoom> rooms)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ChatListInitial() when initial != null:
return initial();case ChatListLoading() when loading != null:
return loading();case ChatListLoaded() when loaded != null:
return loaded(_that.rooms);case ChatListError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ChatListInitial implements ChatListState {
  const ChatListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatListState.initial()';
}


}




/// @nodoc


class ChatListLoading implements ChatListState {
  const ChatListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ChatListState.loading()';
}


}




/// @nodoc


class ChatListLoaded implements ChatListState {
  const ChatListLoaded(final  List<ChatRoom> rooms): _rooms = rooms;
  

 final  List<ChatRoom> _rooms;
 List<ChatRoom> get rooms {
  if (_rooms is EqualUnmodifiableListView) return _rooms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rooms);
}


/// Create a copy of ChatListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatListLoadedCopyWith<ChatListLoaded> get copyWith => _$ChatListLoadedCopyWithImpl<ChatListLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListLoaded&&const DeepCollectionEquality().equals(other._rooms, _rooms));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_rooms));

@override
String toString() {
  return 'ChatListState.loaded(rooms: $rooms)';
}


}

/// @nodoc
abstract mixin class $ChatListLoadedCopyWith<$Res> implements $ChatListStateCopyWith<$Res> {
  factory $ChatListLoadedCopyWith(ChatListLoaded value, $Res Function(ChatListLoaded) _then) = _$ChatListLoadedCopyWithImpl;
@useResult
$Res call({
 List<ChatRoom> rooms
});




}
/// @nodoc
class _$ChatListLoadedCopyWithImpl<$Res>
    implements $ChatListLoadedCopyWith<$Res> {
  _$ChatListLoadedCopyWithImpl(this._self, this._then);

  final ChatListLoaded _self;
  final $Res Function(ChatListLoaded) _then;

/// Create a copy of ChatListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? rooms = null,}) {
  return _then(ChatListLoaded(
null == rooms ? _self._rooms : rooms // ignore: cast_nullable_to_non_nullable
as List<ChatRoom>,
  ));
}


}

/// @nodoc


class ChatListError implements ChatListState {
  const ChatListError(this.message);
  

 final  String message;

/// Create a copy of ChatListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatListErrorCopyWith<ChatListError> get copyWith => _$ChatListErrorCopyWithImpl<ChatListError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ChatListState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ChatListErrorCopyWith<$Res> implements $ChatListStateCopyWith<$Res> {
  factory $ChatListErrorCopyWith(ChatListError value, $Res Function(ChatListError) _then) = _$ChatListErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ChatListErrorCopyWithImpl<$Res>
    implements $ChatListErrorCopyWith<$Res> {
  _$ChatListErrorCopyWithImpl(this._self, this._then);

  final ChatListError _self;
  final $Res Function(ChatListError) _then;

/// Create a copy of ChatListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ChatListError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
