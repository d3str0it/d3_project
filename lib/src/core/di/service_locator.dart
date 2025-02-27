import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:it4gaz/src/api/api_service.dart';

class ServiceLocator {
  static late GetIt _injector;

  static GetIt get injector => _injector;

  static Future<void> setup() async {
    _injector = GetIt.instance;

    final dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      contentType: 'application/json',
      validateStatus: (status) {
        return true;
      },
    ));

    GetIt.I.registerLazySingleton<RestClient>(
      () => RestClient(dio),
    );
  }
}
