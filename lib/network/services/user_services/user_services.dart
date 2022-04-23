import 'package:dio/dio.dart';
import 'package:flutter_generic_api_response/network/base/safe_call.dart';
import 'package:flutter_generic_api_response/network/services/user_services/model/login_request.dart';
import 'package:flutter_generic_api_response/network/services/user_services/model/login_response.dart';

import '../../base/api_result.dart';

class UserServices {
  final Dio _dio;

  UserServices(this._dio);

  Future<ApiResult<LoginResponse>> login(LoginRequest request) async {
    return await _dio.safePost(
        "https://gokberkyagci.com/flutterapp/api/login.php",
        LoginResponse.fromJson,
        data: request.toJson());
  }
}
