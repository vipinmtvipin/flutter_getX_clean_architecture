// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_responds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponds _$LoginRespondsFromJson(Map<String, dynamic> json) =>
    LoginResponds(
      id: json['id'] as int?,
      username: json['username'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginRespondsToJson(LoginResponds instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
      'token': instance.token,
    };
