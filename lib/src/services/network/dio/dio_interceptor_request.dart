import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/services/exceptions/server/server_error_mapper.dart';

/// Интерсептор сделанный для перехвата http запроса и ошибок
class ErrorInterceptor extends Interceptor {
  @override
  DioError onError(DioError err, ErrorInterceptorHandler handler) {
    throw ServerErrorMapper.fromStatusCode(
      err,
    );
  }
}
