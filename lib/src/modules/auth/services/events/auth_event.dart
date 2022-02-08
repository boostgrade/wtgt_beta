abstract class AuthEvent {}

class MetaAuthEvent extends AuthEvent {

  final String token;

  MetaAuthEvent(this.token);
}

class AppleAuthEvent extends AuthEvent {

  final String token;

  AppleAuthEvent(this.token);
}

class VkAuthEvent extends AuthEvent {

  final String token;

  VkAuthEvent(this.token);
}

class GoogleAuthEvent extends AuthEvent {

  final String token;

  GoogleAuthEvent(this.token);
}

class PhoneAuthEvent extends AuthEvent {
  final String phone;

  PhoneAuthEvent(this.phone);
}

class LogoutEvent extends AuthEvent {}

class RegistrationEvent extends AuthEvent {

  final String name;
  final String lastName;
  final String phone;
  final DateTime birthDate;

  RegistrationEvent(this.name, this.lastName, this.phone, this.birthDate);
}

class SendPhoneEvent extends AuthEvent {
  final String phone;

  SendPhoneEvent(this.phone);
}

class SendCodeEvent extends AuthEvent {
  final String code;

  SendCodeEvent(this.code);
}