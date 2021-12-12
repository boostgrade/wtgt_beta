class ErrorBody {
  int? errorCode;
  String? errorMessage;

  ErrorBody(this.errorCode, this.errorMessage);

  ErrorBody.fromMap(Map<String, dynamic> json) {
    this.errorCode = json['code'];
    this.errorMessage = json['message'];
  }
}
