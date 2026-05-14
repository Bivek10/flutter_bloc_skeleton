// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRoomModel _$ChatRoomModelFromJson(Map<String, dynamic> json) =>
    _ChatRoomModel(
      id: json['id'] as String,
      title: json['title'] as String,
      lastMessage: json['lastMessage'] as String?,
      lastUpdatedAt: (json['lastUpdatedAt'] as num).toInt(),
      type: json['type'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ChatRoomModelToJson(_ChatRoomModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'lastMessage': instance.lastMessage,
      'lastUpdatedAt': instance.lastUpdatedAt,
      'type': instance.type,
      'participants': instance.participants,
    };
