import 'package:where_to_go_today/src/services/exceptions/server/parse_error.dart';

/// Для преобразования ошибок сервера в ошибки приложенния,
/// необходимо создать соответсвующие классы,
/// расширяющие класс [Exception]
/// с названиями, соответсвующими конкретной ошибке.

/// Серверная ошибка по-умолчанию
class ServerErrorException implements Exception {
  final int _errorCode;
  final Map<String, dynamic> _errorData;

  ServerErrorException(this._errorCode, this._errorData);

  String errorMessage() {
    print(
      '$_errorCode: $_errorData',
    );

    return _errorData.toString();
  }
}

class NotFoundException implements Exception {
  final int _errorCode;
  final Map<String, dynamic> _errorData;

  NotFoundException(this._errorCode, this._errorData);

  String errorMessage() {
    print(
      '$_errorCode: $_errorData',
    );

    return _errorData.toString();
  }
}

class BadRequestException implements Exception {
  final int _errorCode;
  final Map<String, dynamic> _errorData;

  BadRequestException(this._errorCode, this._errorData);
  String errorMessage() {
    ErrorBody errorBody = ErrorBody.fromMap(_errorData);
    int dataErrorCode = errorBody.errorCode!;
    String dataErrorMessage = errorBody.errorMessage!;
    print('$dataErrorCode: $dataErrorMessage');

    return dataErrorMessage;
  }
}

class UnauthorizedException implements Exception {
  final int _errorCode;
  final Map<String, dynamic> _errorData;

  UnauthorizedException(this._errorCode, this._errorData);

  String errorMessage() {
    /// Необходим новый токен
    return _errorData.toString();
  }
}
