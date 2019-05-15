//import 'package:json_annotation/json_annotation.dart';
////
////// user.g.dart 将在我们运行生成命令后自动生成
////part 'even_list.g.dart';
////
///////这个标注是告诉生成器，这个类是需要生成Model类的
////@JsonSerializable()
////
////class EvenList{
////  EvenList(this.eventUrl

////      );
////
//////  String community;
////

////
////
////  //不同的类使用不同的mixin即可
////  factory EvenList.fromJson(Map<String, dynamic> json) => _$EvenListFromJson(json);
////  Map<String, dynamic> toJson() => _$EvenListToJson(this);
////}
import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'event_list.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class EvenList {
  EvenList(String eventUrl,this.title,
      this.userId,this.content, this.category,
      this.city, this.endTime,this.startTime,
      this.cityAlias,this.screenshot, this.showBanner,
      this.bannerStartTime, this.bannerEndTime,this.createdAt
      ,this.updatedAt);

//  String community;
    String eventUrl;
    String title;
    String userId;
    String content;
    String category;
    String startTime;
    String endTime;
    String city;
    String cityAlias;
    String screenshot;
    int    showBanner;
    String bannerStartTime;
    String bannerEndTime;
    String createdAt;
    String updatedAt;

  //不同的类使用不同的mixin即可
  factory EvenList.fromJson(Map<String, dynamic> json) =>
      _$EvenListFromJson(json);

  Map<String, dynamic> toJson() => _$EvenListToJson(this);
}