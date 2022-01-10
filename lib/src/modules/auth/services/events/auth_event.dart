abstract class AuthEvent {}

class SmsAuthEvent extends AuthEvent {
  final String code;

  @override
  List<Object?> get fields => [code];

  SmsAuthEvent(this.code);
}

class ExternalAuthEvent extends AuthEvent {
  final Enum type;

  @override
  List<Object?> get props => [type];

  ExternalAuthEvent(this.type);
}

class PhoneAuthEvent extends AuthEvent {
  final String phone;

  @override
  List<Object?> get props => [phone];

  PhoneAuthEvent(this.phone);
}

class LogoutEvent extends AuthEvent {
  @override
  List<Object?> get props => [];
}

class RegistrationEvent extends AuthEvent {

  final String name;
  final String lastName;
  final String phone;
  final DateTime birthDate;

  @override
  List<Object?> get props => [name, lastName, phone, birthDate];

  RegistrationEvent(this.name, this.lastName, this.phone, this.birthDate);
}