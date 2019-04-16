import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_study/model/tags.dart';
import 'package:flutter_study/model/user.dart';
import 'package:flutter_study/model/category.dart';
// user.g.dart 将在我们运行生成命令后自动生成
part 'entrylist.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class Entrylist{
  Entrylist(this.collectionCount, this.isEvent,
      this.gfw, this.commentsCount,
      this.buildTime, this.checkStatus,
      this.objectId, this.entryView,
      this.subscribersCount, this.verifyStatus,
      this.ngxCachedTime,this.tags,
      this.updatedAt, this.rankIndex,
      this.hot, this.autoPass,
      this.originalUrl, this.verifyCreatedAt,
      this.createdAt,this.user,
      this.author, this.screenshot,
      this.original, this.hotIndex,
      this.content, this.title,
      this.lastCommentTime, this.post,
      this.english,this.category,
      this.viewsCount, this.summaryInfo,
      this.isCollected);

  int collectionCount;
  bool isEvent;
  bool gfw;
  int commentsCount;
  double buildTime;
  bool checkStatus;
  String objectId;
  String entryView;
  double subscribersCount;
  double ngxCachedTime;

  bool verifyStatus;
  List<Tags> tags;
  String updatedAt;
  double rankIndex;
  bool hot;
  bool autoPass;
  String originalUrl;
  String verifyCreatedAt;
  String createdAt;
  User user;
  String author;
  String screenshot;
  bool original;

  double hotIndex;
  String content;
  String title;
  String lastCommentTime;
  String post;
  bool english;
  Category category;

  double viewsCount;
  String summaryInfo;
  bool isCollected;
  //不同的类使用不同的mixin即可
  factory Entrylist.fromJson(Map<String, dynamic> json) => _$EntrylistFromJson(json);
  Map<String, dynamic> toJson() => _$EntrylistToJson(this);
}