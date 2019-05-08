import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'navList.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class NavList{
  NavList(this.id,
      this.name, this.score,
      this.createdAt, this.alias,
      );

//  String community;
  String id;
  String name;
  String score;
  String createdAt;
  String alias;

  //不同的类使用不同的mixin即可
  factory NavList.fromJson(Map<String, dynamic> json) => _$NavListFromJson(json);
  Map<String, dynamic> toJson() => _$NavListToJson(this);
}