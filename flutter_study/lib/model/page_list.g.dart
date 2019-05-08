// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageList _$PageListFromJson(Map<String, dynamic> json) {
  return PageList(
      (json['section'] as List)?.map((e) => e as String)?.toList(),
      json['userData'] as Map<String, dynamic>,
      json['desc'] as String,
      json['user'] as String,
      (json['price'] as num)?.toDouble(),
      (json['buyCount'] as num)?.toDouble(),
      (json['viewCount'] as num)?.toDouble(),
      (json['contentSize'] as num)?.toDouble(),
      json['img'] as String,
      json['category'] as String,
      (json['tags'] as List)?.map((e) => e as String)?.toList(),
      json['createdAt'] as String,
      json['updatedAt'] as String,
      json['isDeleted'] as bool,
      json['isHot'] as bool,
      (json['isPublish'] as num)?.toDouble(),
      json['isShow'] as bool,
      json['isFinished'] as bool,
      json['finishedAt'] as String,
      (json['lastSectionCount'] as num)?.toDouble(),
      json['isTop'] as bool,
      (json['pv'] as num)?.toDouble(),
      json['wechatSignal'] as String,
      json['profile'] as String,
      json['wechatImg'] as String,
      json['wechatImgDesc'] as String,
      (json['navId'] as List)?.map((e) => e as String)?.toList(),
      json['isEditor'] as bool,
      json['isBuy'] as bool,
      json['readLog'] as Map<String, dynamic>,
      json['id'] as String,
      json['title'] as String);
}

Map<String, dynamic> _$PageListToJson(PageList instance) => <String, dynamic>{
      'wechatSignal': instance.wechatSignal,
      'profile': instance.profile,
      'wechatImg': instance.wechatImg,
      'wechatImgDesc': instance.wechatImgDesc,
      'navId': instance.navId,
      'isEditor': instance.isEditor,
      'isBuy': instance.isBuy,
      'readLog': instance.readLog,
      'userData': instance.userData,
      'id': instance.id,
      'section': instance.section,
      'desc': instance.desc,
      'user': instance.user,
      'price': instance.price,
      'title': instance.title,
      'buyCount': instance.buyCount,
      'viewCount': instance.viewCount,
      'contentSize': instance.contentSize,
      'img': instance.img,
      'category': instance.category,
      'tags': instance.tags,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isDeleted': instance.isDeleted,
      'isHot': instance.isHot,
      'isPublish': instance.isPublish,
      'isShow': instance.isShow,
      'isFinished': instance.isFinished,
      'finishedAt': instance.finishedAt,
      'lastSectionCount': instance.lastSectionCount,
      'isTop': instance.isTop,
      'pv': instance.pv
    };
