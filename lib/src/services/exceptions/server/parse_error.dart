class ErrorBody {
  final int? errorCode;
  final String? errorMessage;

  ErrorBody(this.errorCode, this.errorMessage);

  factory ErrorBody.fromMap(Map<String, dynamic> json) {
    return ErrorBody(json['errorCode'], json['errorMessage']);
  }

  //The declaration '_internal' isn't referenced
  // ErrorBody._internal(this.errorCode, this.errorMessage);
}
