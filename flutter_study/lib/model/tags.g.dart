// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tags _$TagsFromJson(Map<String, dynamic> json) {
  return Tags(json['ngxCached'] as bool, json['title'] as String,
      json['id'] as String, (json['ngxCachedTime'] as num)?.toDouble());
}

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'ngxCachedTime': instance.ngxCachedTime,
      'ngxCached': instance.ngxCached,
      'id': instance.id,
      'title': instance.title
    };
