// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_repos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomRepos _$CustomReposFromJson(Map<String, dynamic> json) {
  return CustomRepos(
      json['objectId'] as String,
      (json['userId'] as num)?.toDouble(),
      (json['id'] as num)?.toDouble(),
      json['userName'] as String,
      json['userUrl'] as String,
      json['userAvatarUrl'] as String,
      json['repoName'] as String,
      json['description'] as String,
      json['chTitle'] as String,
      json['chDescription'] as String,
      json['language'] as String,
      json['languages'] as Map<String, dynamic>,
      (json['tags'] as List)?.map((e) => e as String)?.toList(),
      (json['topics'] as List)?.map((e) => e as String)?.toList(),
      (json['watchersCount'] as num)?.toDouble(),
      json['stars'] as int,
      json['fork'] as int,
      json['url'] as String,
      json['pushedAt'] as String,
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['localCreatedAt'] as String,
      json['localUpdatedAt'] as String);
}

Map<String, dynamic> _$CustomReposToJson(CustomRepos instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'userUrl': instance.userUrl,
      'userAvatarUrl': instance.userAvatarUrl,
      'repoName': instance.repoName,
      'description': instance.description,
      'chTitle': instance.chTitle,
      'chDescription': instance.chDescription,
      'language': instance.language,
      'languages': instance.languages,
      'tags': instance.tags,
      'topics': instance.topics,
      'watchersCount': instance.watchersCount,
      'stars': instance.stars,
      'fork': instance.fork,
      'url': instance.url,
      'pushedAt': instance.pushedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'localCreatedAt': instance.localCreatedAt,
      'localUpdatedAt': instance.localUpdatedAt
    };
