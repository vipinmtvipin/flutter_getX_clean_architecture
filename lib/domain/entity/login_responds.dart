
import 'package:json_annotation/json_annotation.dart';
part 'login_responds.g.dart';

@JsonSerializable()
class LoginResponds {
  int? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? image;
  String? token;

  LoginResponds(
      {this.id,
      this.username,
      this.lastName,
      this.email,
      this.firstName,
      this.gender,
      this.image,
      this.token});

  factory LoginResponds.fomJson(Map<String,dynamic> json)=>_$LoginRespondsFromJson(json);

  Map<String, dynamic> toJson(LoginResponds movie)=>_$LoginRespondsToJson(this);


}
