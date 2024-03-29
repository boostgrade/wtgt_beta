import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/services/network/dio/dio_interceptor_request.dart';
import 'package:where_to_go_today/src/services/urls.dart';

/// Класс-модуль для конфигурации dio
class DioModule {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: baseUrl,
    )
    ..interceptors.addAll(
      [
        LogInterceptor(),
        ErrorInterceptor(),
      ],
    );
}
