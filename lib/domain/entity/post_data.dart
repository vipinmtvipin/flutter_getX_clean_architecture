import 'package:json_annotation/json_annotation.dart';
part 'post_data.g.dart';

@JsonSerializable()
class PostData {
  PostData({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory PostData.fomJson(Map<String,dynamic> json)=>_$PostDataFromJson(json);

  Map<String, dynamic> toJson(PostData data)=>_$PostDataToJson(this);

}