import 'package:dio/dio.dart';
import 'package:flutter_generic_api_response/network/services/user_services/user_services.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  late final Dio _dio = Dio()..interceptors.add(PrettyDioLogger());

  late UserServices userServices = UserServices(_dio);
}
