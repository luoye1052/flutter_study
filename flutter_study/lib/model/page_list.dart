import 'package:json_annotation/json_annotation.dart';


// user.g.dart 将在我们运行生成命令后自动生成
part 'page_list.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class PageList {
  PageList(this.section,this.userData,
      this.desc,this.user,this.price,
      this.buyCount,this.viewCount,this.contentSize,
      this.img,this.category,this.tags,
      this.createdAt,this.updatedAt,this.isDeleted,
      this.isHot,this.isPublish,this.isShow,
      this.isFinished,this.finishedAt,this.lastSectionCount,
      this.isTop,this.pv,this.wechatSignal,
      this.profile,this.wechatImg,this.wechatImgDesc,
      this.navId,this.isEditor,this.isBuy,
      this.readLog,this.id,this.title
      );


  String wechatSignal;
  String profile;
  String wechatImg;
  String wechatImgDesc;
  List<String> navId;
  bool isEditor;
  bool isBuy;
  Map<String,dynamic> readLog;
  Map<String,dynamic> userData;
  String id;



  List<String> section;
  String desc;
  String user;
  double price;
  String title;
  double buyCount;
  double viewCount;
  double contentSize;
  String img;
  String category;
  List<String> tags;
  String createdAt;
  String updatedAt;
  bool isDeleted;
  bool isHot;
  double isPublish;
  bool isShow;
  bool isFinished;
  String finishedAt;
  double lastSectionCount;
  bool isTop;
  double pv;

  //不同的类使用不同的mixin即可
  factory PageList.fromJson(Map<String, dynamic> json) => _$PageListFromJson(json);

  Map<String, dynamic> toJson() => _$PageListToJson(this);
}