// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NavList _$NavListFromJson(Map<String, dynamic> json) {
  return NavList(
      json['id'] as String,
      json['name'] as String,
      json['score'] as String,
      json['createdAt'] as String,
      json['alias'] as String);
}

Map<String, dynamic> _$NavListToJson(NavList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'score': instance.score,
      'createdAt': instance.createdAt,
      'alias': instance.alias
    };
