/// Для преобразования ошибок сервера в ошибки приложенния,
/// необходимо создать соответсвующие классы,
/// расширяющие класс [Exception]
/// с названиями, соответсвующими конкретной ошибке.

/// Серверная ошибка по-умолчанию
class ServerErrorException implements Exception {
  final int _errorCode;
  final String _errorMessage;

  ServerErrorException(this._errorCode, this._errorMessage);

  String errorMessage() {
    print(
      '$_errorCode: $_errorMessage',
    );

    return _errorMessage;
  }
}

class NotFoundException implements Exception {
  final int _errorCode;
  final String _errorMessage;

  NotFoundException(this._errorCode, this._errorMessage);

  String errorMessage() {
    print(
      '$_errorCode: $_errorMessage',
    );

    return _errorMessage;
  }
}

class BadRequestException implements Exception {
  final int _errorCode;
  final String _errorMessage;

  BadRequestException(this._errorCode, this._errorMessage);

  String errorMessage() {
    print(
      '$_errorCode: $_errorMessage',
    );

    return _errorMessage;
  }
}

class UnauthorizedException implements Exception {
  final int _errorCode;
  final String _errorMessage;

  UnauthorizedException(this._errorCode, this._errorMessage);

  String errorMessage() {
    return _errorMessage;
  }
}
