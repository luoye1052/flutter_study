import 'package:json_annotation/json_annotation.dart';

// user.g.dart 将在我们运行生成命令后自动生成
part 'cityList.g.dart';

///这个标注是告诉生成器，这个类是需要生成Model类的
@JsonSerializable()

class CityList {
  CityList(this.cityName,
      this.cityAlias, this.weight,);

//  String community;
  String cityName;
  String cityAlias;
  int weight;

  //不同的类使用不同的mixin即可
  factory CityList.fromJson(Map<String, dynamic> json) =>
      _$CityListFromJson(json);

  Map<String, dynamic> toJson() => _$CityListToJson(this);
}