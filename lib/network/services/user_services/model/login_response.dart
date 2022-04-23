import 'package:flutter/foundation.dart';
import 'package:flutter_generic_api_response/model/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required UserEntity user,
    required String accessToken,
  }) = _LoginResponse;



  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}