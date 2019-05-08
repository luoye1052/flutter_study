// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entrylist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entrylist _$EntrylistFromJson(Map<String, dynamic> json) {
  return Entrylist(
      json['collectionCount'] as int,
      json['isEvent'] as bool,
      json['gfw'] as bool,
      json['commentsCount'] as int,
      (json['buildTime'] as num)?.toDouble(),
      json['checkStatus'] as bool,
      json['objectId'] as String,
      json['entryView'] as String,
      (json['subscribersCount'] as num)?.toDouble(),
      json['verifyStatus'] as bool,
      (json['ngxCachedTime'] as num)?.toDouble(),
      (json['tags'] as List)
          ?.map((e) =>
              e == null ? null : Tags.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['updatedAt'] as String,
      (json['rankIndex'] as num)?.toDouble(),
      json['hot'] as bool,
      json['autoPass'] as bool,
      json['originalUrl'] as String,
      json['verifyCreatedAt'] as String,
      json['createdAt'] as String,
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      json['author'] as String,
      json['screenshot'] as String,
      json['original'] as bool,
      (json['hotIndex'] as num)?.toDouble(),
      json['content'] as String,
      json['title'] as String,
      json['lastCommentTime'] as String,
      json['post'] as String,
      json['english'] as bool,
      json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      (json['viewsCount'] as num)?.toDouble(),
      json['summaryInfo'] as String,
      json['isCollected'] as bool);
}

Map<String, dynamic> _$EntrylistToJson(Entrylist instance) => <String, dynamic>{
      'collectionCount': instance.collectionCount,
      'isEvent': instance.isEvent,
      'gfw': instance.gfw,
      'commentsCount': instance.commentsCount,
      'buildTime': instance.buildTime,
      'checkStatus': instance.checkStatus,
      'objectId': instance.objectId,
      'entryView': instance.entryView,
      'subscribersCount': instance.subscribersCount,
      'ngxCachedTime': instance.ngxCachedTime,
      'verifyStatus': instance.verifyStatus,
      'tags': instance.tags,
      'updatedAt': instance.updatedAt,
      'rankIndex': instance.rankIndex,
      'hot': instance.hot,
      'autoPass': instance.autoPass,
      'originalUrl': instance.originalUrl,
      'verifyCreatedAt': instance.verifyCreatedAt,
      'createdAt': instance.createdAt,
      'user': instance.user,
      'author': instance.author,
      'screenshot': instance.screenshot,
      'original': instance.original,
      'hotIndex': instance.hotIndex,
      'content': instance.content,
      'title': instance.title,
      'lastCommentTime': instance.lastCommentTime,
      'post': instance.post,
      'english': instance.english,
      'category': instance.category,
      'viewsCount': instance.viewsCount,
      'summaryInfo': instance.summaryInfo,
      'isCollected': instance.isCollected
    };
