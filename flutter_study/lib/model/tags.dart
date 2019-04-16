import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'tags.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class Tags {
  Tags(this.ngxCached, this.title,
      this.id, this.ngxCachedTime);

  double ngxCachedTime;
  bool ngxCached;
  String id;
  String title;

  //不同的类使用不同的mixin即可
  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}