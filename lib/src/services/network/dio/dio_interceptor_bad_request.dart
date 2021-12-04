import 'package:dio/dio.dart';
import 'package:where_to_go_today/src/services/exceptions/server/server_exceptions.dart';

class BadRequestInterceptor extends Interceptor {
  int httpCodeBadRequest = 400;
  int httpCodeUnauthorized = 401;

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    print(response.data);
    if (response.statusCode == httpCodeBadRequest) {
      int? statusCode = response.statusCode;
      String? statusMessage = response.statusMessage;

      BadRequestException(statusCode!, statusMessage!).errorMessage();
    }

    if (response.statusCode == httpCodeUnauthorized) {
      // Необходимо перезапросить токен
      print('Unauthorized: необходимо перезапросить токен');
    }

    return super.onResponse(response, handler);
  }
}
