import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/services/exceptions/server/server_error_mapper.dart';

/// Интерсептор сделанный для перехвата http запроса и ошибок
class ErrorInterceptor extends Interceptor {
  @override
  onError(DioError err, ErrorInterceptorHandler handler) {
    ServerErrorMapper.fromStatusCode(
      err.response?.statusCode,
      err.response?.statusMessage,
    );

    handler.reject(err);
  }
}
