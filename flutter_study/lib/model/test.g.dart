// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Test _$TestFromJson(Map<String, dynamic> json) {
  return Test(json['originalUrl'] as String, json['verifyCreatedAt'] as String,
      json['createdAt'] as String, json['isEvent'] as bool);
}

Map<String, dynamic> _$TestToJson(Test instance) => <String, dynamic>{
      'originalUrl': instance.originalUrl,
      'verifyCreatedAt': instance.verifyCreatedAt,
      'createdAt': instance.createdAt,
      'isEvent': instance.isEvent
    };
