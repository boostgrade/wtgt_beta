import 'package:where_to_go_today/src/services/exceptions/server/parse_error.dart';

/// Для преобразования ошибок сервера в ошибки приложенния,
/// необходимо создать соответсвующие классы,
/// расширяющие класс [Exception]
/// с названиями, соответсвующими конкретной ошибки.

/// Серверная ошибка по-умолчанию
class ServerErrorException implements Exception {
  final int _errorCode;

  ServerErrorException(this._errorCode);

  String errorMessage() {
    // print(
    //   '$_errorCode',
    // );

    return _errorCode.toString();
  }
}

class NotFoundException implements Exception {
  final int _errorCode;

  NotFoundException(this._errorCode);

  void errorMessage() {
    // print(
    //   '$_errorCode',
    // );
  }
}

class BadRequestException implements Exception {
  final int _errorCode;
  final Map<String, dynamic> _errorData;

  BadRequestException(this._errorCode, this._errorData);

  @override
  String toString() {
    ErrorBody errorBody = ErrorBody.fromMap(_errorData);
    int dataErrorCode = errorBody.errorCode!;
    String dataErrorMessage = errorBody.errorMessage!;

    print('Ошибка' + _errorCode.toString());

    return '$dataErrorCode: $dataErrorMessage';
  }
}

class UnauthorizedException implements Exception {
  final int _errorCode;

  UnauthorizedException(this._errorCode);

  void errorMessage() {
    /// Необходим новый токен
    print('Необходим новый токен' + _errorCode.toString());
  }
}
