//import 'package:json_annotation/json_annotation.dart';
//// user.g.dart 将在我们运行生成命令后自动生成
//part 'test.g.dart';
//
/////这个标注是告诉生成器，这个类是需要生成Model类的
//@JsonSerializable()
//
//class Test{
//  Test(this.objectId, this.entryView);
//
//
//  String objectId;
//  String entryView;
//
//
//
//  //不同的类使用不同的mixin即可
//  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
//  Map<String, dynamic> toJson() => _$TestToJson(this);
//}
import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'pin_user.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class PinUser {
  PinUser(this.avatarLarge, this.objectId,
      this.company,this.followeesCount,
      this.followersCount,this.jobTitle,
      this.role,this.username,
      this.currentUserFollowed);

  String avatarLarge;
  String objectId;
  String company;
  int followeesCount;
  int followersCount;
  String jobTitle;
  String role;
  String username;
  bool currentUserFollowed;

  //不同的类使用不同的mixin即可
  factory PinUser.fromJson(Map<String, dynamic> json) => _$PinUserFromJson(json);

  Map<String, dynamic> toJson() => _$PinUserToJson(this);
}