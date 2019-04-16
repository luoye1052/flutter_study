import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'user.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class User{
  User( this.collectedEntriesCount,
      this.company, this.followersCount,
      this.followeesCount, this.role,
      this.postedPostsCount, this.isAuthor,
      this.postedEntriesCount, this.totalCommentsCount,
      this.ngxCachedTime, this.ngxCached,
      this.viewedEntriesCount, this.jobTitle,
      this.subscribedTagsCount, this.totalCollectionsCount,
      this.username, this.avatarLarge,
      this.objectId);

//  String community;
  double collectedEntriesCount;
  String company;
  double followersCount;
  double followeesCount;
  String role;
  double postedPostsCount;
  bool isAuthor;
  double postedEntriesCount;
  double totalCommentsCount;

  double ngxCachedTime;
  bool ngxCached;
  double viewedEntriesCount;
  String jobTitle;
  double subscribedTagsCount;
  double totalCollectionsCount;
  String username;
  String avatarLarge;
  String objectId;
  //不同的类使用不同的mixin即可
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}