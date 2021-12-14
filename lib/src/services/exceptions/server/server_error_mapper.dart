import 'package:dio/dio.dart';

import 'server_exceptions.dart';

/// Сущность, которая преобразует ошибки сервера в ошибки приложенния
/// для дальнейшей обработки.
class ServerErrorMapper {
  /// Для обработки остальных серверных ошибок
  /// необходимо задать новые целочисленные константы, соотвтетсвующие кодам.
  static const int _notFound = 404;
  static const int _unauthorized = 401;
  static const int _badRequest = 400;

  static Exception fromStatusCode(DioError err) {
    /// Для обработки остальных серверных ошибок
    /// нужно написать дополнительные блоки в условном выражении,
    /// предварительно создав классы исключений.
    int? errorStatusCode = err.response?.statusCode;
    Map<String, dynamic>? errorData = err.response?.data;
    if (errorStatusCode == _notFound) {
      return NotFoundException(errorStatusCode!);
    }

    if (errorStatusCode == _unauthorized) {
      // Необходимо перезапросить токен
      return UnauthorizedException(errorStatusCode!);
    }

    if (errorStatusCode == _badRequest) {
      return BadRequestException(errorStatusCode!, errorData!);
    }

    /// Возвращается по-умолчанию для остальных ошибок
    return ServerErrorException(errorStatusCode!, errorData!);
  }
}
