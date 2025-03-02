import 'dart:io';

import 'package:dio/dio.dart';
import 'package:it4gaz/src/api/data/requests/sensor_request_model.dart';
import 'package:it4gaz/src/api/data/responces/analyze_response.dart';
import 'package:it4gaz/src/api/data/responces/sensor_response.dart';
import 'package:it4gaz/src/core/constants/strings.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: apiUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) {
    final logger = Logger();

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        logger.i('REQUEST[${options.method}] => PATH: ${options.path}\n'
            'Headers: ${options.headers}\n'
            'Data: ${options.data}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        logger.i(
            'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}\n'
            'Response: ${response.data}');
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        logger.e(
            'ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}\n'
            'Error: ${e.message}');
        return handler.next(e);
      },
    ));
    return _RestClient(dio);
  }

  @POST('/data/analyze')
  @MultiPart()
  Future<AnalyzeResponse> analyze({
    @Part() required File file,
  });

  @POST('/analyze/sensor/T1')
  Future<SensorResponse> getSensors(
      {@Body() required SensorRequestModel request});
}
