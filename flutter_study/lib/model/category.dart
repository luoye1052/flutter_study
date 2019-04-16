import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'category.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class Category {
  Category(this.ngxCached, this.title,
      this.id, this.name, this.ngxCachedTime);

  bool ngxCached;
  String title;
  String id;
  String name;
  double ngxCachedTime;

  //不同的类使用不同的mixin即可
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}