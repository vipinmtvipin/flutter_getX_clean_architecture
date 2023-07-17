import 'package:getx_clean_template_vip/domain/entity/post_data.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post_responds.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class PostResponds {
  PostResponds({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
   // this.data
  });

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
 // PostData? data;

  factory PostResponds.fomJson(Map<String,dynamic> json)=>_$PostRespondsFromJson(json);

  Map<String, dynamic> toJson(PostResponds data)=>_$PostRespondsToJson(this);


}



