// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_topic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinTopic _$PinTopicFromJson(Map<String, dynamic> json) {
  return PinTopic(
      json['objectId'] as String,
      json['title'] as String,
      json['description'] as String,
      json['icon'] as String,
      json['msgsCount'] as int,
      json['followersCount'] as int,
      json['attendersCount'] as int,
      json['hotIndex'] as int,
      json['currentUserFollowed'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['latestMsgCreatedAt'] as String);
}

Map<String, dynamic> _$PinTopicToJson(PinTopic instance) => <String, dynamic>{
      'objectId': instance.objectId,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
      'msgsCount': instance.msgsCount,
      'followersCount': instance.followersCount,
      'attendersCount': instance.attendersCount,
      'hotIndex': instance.hotIndex,
      'currentUserFollowed': instance.currentUserFollowed,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'latestMsgCreatedAt': instance.latestMsgCreatedAt
    };
