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
part 'test.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class Test {
  Test(this.originalUrl, this.verifyCreatedAt,
      this.createdAt,
      this.isEvent);

  String originalUrl;
  String verifyCreatedAt;
  String createdAt;
  bool isEvent;

  //不同的类使用不同的mixin即可
  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);

  Map<String, dynamic> toJson() => _$TestToJson(this);
}