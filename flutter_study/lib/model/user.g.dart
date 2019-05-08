// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
      (json['collectedEntriesCount'] as num)?.toDouble(),
      json['company'] as String,
      (json['followersCount'] as num)?.toDouble(),
      (json['followeesCount'] as num)?.toDouble(),
      json['role'] as String,
      (json['postedPostsCount'] as num)?.toDouble(),
      json['isAuthor'] as bool,
      (json['postedEntriesCount'] as num)?.toDouble(),
      (json['totalCommentsCount'] as num)?.toDouble(),
      (json['ngxCachedTime'] as num)?.toDouble(),
      json['ngxCached'] as bool,
      (json['viewedEntriesCount'] as num)?.toDouble(),
      json['jobTitle'] as String,
      (json['subscribedTagsCount'] as num)?.toDouble(),
      (json['totalCollectionsCount'] as num)?.toDouble(),
      json['username'] as String,
      json['avatarLarge'] as String,
      json['objectId'] as String);
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'collectedEntriesCount': instance.collectedEntriesCount,
      'company': instance.company,
      'followersCount': instance.followersCount,
      'followeesCount': instance.followeesCount,
      'role': instance.role,
      'postedPostsCount': instance.postedPostsCount,
      'isAuthor': instance.isAuthor,
      'postedEntriesCount': instance.postedEntriesCount,
      'totalCommentsCount': instance.totalCommentsCount,
      'ngxCachedTime': instance.ngxCachedTime,
      'ngxCached': instance.ngxCached,
      'viewedEntriesCount': instance.viewedEntriesCount,
      'jobTitle': instance.jobTitle,
      'subscribedTagsCount': instance.subscribedTagsCount,
      'totalCollectionsCount': instance.totalCollectionsCount,
      'username': instance.username,
      'avatarLarge': instance.avatarLarge,
      'objectId': instance.objectId
    };
