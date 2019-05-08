// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
      json['ngxCached'] as bool,
      json['title'] as String,
      json['id'] as String,
      json['name'] as String,
      (json['ngxCachedTime'] as num)?.toDouble());
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'ngxCached': instance.ngxCached,
      'title': instance.title,
      'id': instance.id,
      'name': instance.name,
      'ngxCachedTime': instance.ngxCachedTime
    };
