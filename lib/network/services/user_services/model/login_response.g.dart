// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      user: UserEntity.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
    };
