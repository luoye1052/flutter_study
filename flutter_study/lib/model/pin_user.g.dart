// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinUser _$PinUserFromJson(Map<String, dynamic> json) {
  return PinUser(
      json['avatarLarge'] as String,
      json['objectId'] as String,
      json['company'] as String,
      json['followeesCount'] as int,
      json['followersCount'] as int,
      json['jobTitle'] as String,
      json['role'] as String,
      json['username'] as String,
      json['currentUserFollowed'] as bool);
}

Map<String, dynamic> _$PinUserToJson(PinUser instance) => <String, dynamic>{
      'avatarLarge': instance.avatarLarge,
      'objectId': instance.objectId,
      'company': instance.company,
      'followeesCount': instance.followeesCount,
      'followersCount': instance.followersCount,
      'jobTitle': instance.jobTitle,
      'role': instance.role,
      'username': instance.username,
      'currentUserFollowed': instance.currentUserFollowed
    };
