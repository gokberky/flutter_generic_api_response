import 'package:dio/dio.dart';
import 'package:flutter_generic_api_response/network/base/api_error.dart';
import 'package:flutter_generic_api_response/network/base/api_result.dart';

extension DioExtensions on Dio {
  Future<ApiResult<T>> safePost<T>(String path,
      T Function(Map<String, dynamic>) mapper,
      {data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress}) async {
    try {
      final response = await post(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);

      return ApiResult.fromResponse(response, mapper);
    } on DioError catch (exception) {
      return NetworkError(
          List.filled(1, ApiError(
              code: exception.response?.statusCode,
              message: exception.message
          ), growable: false)
      );
    }
  }
}
