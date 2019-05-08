import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_study/model/pin_user.dart';
import 'package:flutter_study/model/pin_topic.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'pin_list.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class PinList {
  PinList(this.commentCount,
      this.content,
      this.createdAt,
      this.likedCount,
      this.objectId,
      this.pictures,
      this.topic,
      this.uid,
      this.user,this.url,this.urlPic,this.urlTitle);

  PinUser user;
  String objectId;
  String uid;
  String content;
  List<String> pictures;
  int commentCount;
  int likedCount;
  String createdAt;
  PinTopic topic;
  String url;
  String urlTitle;
  String urlPic;

  //不同的类使用不同的mixin即可
  factory PinList.fromJson(Map<String, dynamic> json) => _$PinListFromJson(json);

  Map<String, dynamic> toJson() => _$PinListToJson(this);
}
















