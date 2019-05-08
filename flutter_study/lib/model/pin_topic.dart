
import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'pin_topic.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class PinTopic {
  PinTopic(this.objectId, this.title,
      this.description,this.icon,
      this.msgsCount,this.followersCount,
      this.attendersCount,this.hotIndex,
      this.currentUserFollowed,this.createdAt,
      this.updatedAt,this.latestMsgCreatedAt);

  String objectId;
  String title;
  String description;
  String icon;
  int msgsCount;
  int followersCount;
  int attendersCount;
  int hotIndex;
  String currentUserFollowed;
  String createdAt;
  String updatedAt;
  String latestMsgCreatedAt;

  //不同的类使用不同的mixin即可
  factory PinTopic.fromJson(Map<String, dynamic> json) => _$PinTopicFromJson(json);

  Map<String, dynamic> toJson() => _$PinTopicToJson(this);
}