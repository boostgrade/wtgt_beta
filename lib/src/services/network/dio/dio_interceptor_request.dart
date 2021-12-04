import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/services/exceptions/server/server_error_mapper.dart';

/// Интерсептор сделанный для перехвата http запроса и ошибок
class RequestInterceptor extends Interceptor {
  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response.data);

    return super.onResponse(response, handler);
  }

  @override
  onError(DioError err, ErrorInterceptorHandler handler) {
    ServerErrorMapper.fromStatusCode(
      err.response?.statusCode,
      err.response?.statusMessage,
    );

    return super.onError(err, handler);
  }
}
