// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinList _$PinListFromJson(Map<String, dynamic> json) {
  return PinList(
      json['commentCount'] as int,
      json['content'] as String,
      json['createdAt'] as String,
      json['likedCount'] as int,
      json['objectId'] as String,
      (json['pictures'] as List)?.map((e) => e as String)?.toList(),
      json['topic'] == null
          ? null
          : PinTopic.fromJson(json['topic'] as Map<String, dynamic>),
      json['uid'] as String,
      json['user'] == null
          ? null
          : PinUser.fromJson(json['user'] as Map<String, dynamic>),
      json['url'] as String,
      json['urlPic'] as String,
      json['urlTitle'] as String);
}

Map<String, dynamic> _$PinListToJson(PinList instance) => <String, dynamic>{
      'user': instance.user,
      'objectId': instance.objectId,
      'uid': instance.uid,
      'content': instance.content,
      'pictures': instance.pictures,
      'commentCount': instance.commentCount,
      'likedCount': instance.likedCount,
      'createdAt': instance.createdAt,
      'topic': instance.topic,
      'url': instance.url,
      'urlTitle': instance.urlTitle,
      'urlPic': instance.urlPic
    };
