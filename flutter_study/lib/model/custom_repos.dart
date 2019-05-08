import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'custom_repos.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class CustomRepos {
  CustomRepos(this.objectId, this.userId,this.id,
      this.userName, this.userUrl,this.userAvatarUrl,
      this.repoName, this.description,this.chTitle,
      this.chDescription, this.language,this.languages,
      this.tags, this.topics,this.watchersCount,
      this.stars, this.fork,this.url,
      this.pushedAt, this.createdAt,this.updatedAt,
      this.localCreatedAt, this.localUpdatedAt,);

  String objectId;
  double id;
  double userId;
  String userName;
  String userUrl;
  String userAvatarUrl;
  String repoName;
  String description;
  String chTitle;
  String chDescription;
  String language;
  Map<String,dynamic> languages;
  List<String> tags;
  List<String> topics;
  double watchersCount;
  int stars;
  int fork;
  String url;
  String pushedAt;
  String createdAt;
  String updatedAt;
  String localCreatedAt;
  String localUpdatedAt;

  //不同的类使用不同的mixin即可
  factory CustomRepos.fromJson(Map<String, dynamic> json) =>
      _$CustomReposFromJson(json);

  Map<String, dynamic> toJson() => _$CustomReposToJson(this);
}