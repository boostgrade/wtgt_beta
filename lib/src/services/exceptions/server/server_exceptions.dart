/// Для преобразования ошибок сервера в ошибки приложенния,
/// необходимо создать соответсвующие классы,
/// расширяющие класс [Exception]
/// с названиями, соответсвующими конкретной ошибки.

/// Серверная ошибка по-умолчанию
class ServerErrorException implements Exception {}

class NotFoundException implements Exception {}
