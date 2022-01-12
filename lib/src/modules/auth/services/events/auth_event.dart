abstract class AuthEvent {}

class SmsAuthEvent extends AuthEvent {
  final String code;

  SmsAuthEvent(this.code);
}

enum SocialTypes { vk, apple, google, fb }

class ExternalAuthEvent extends AuthEvent {

  final SocialTypes type;

  ExternalAuthEvent(this.type);
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