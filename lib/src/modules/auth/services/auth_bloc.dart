import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/auth_by_phone_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/auth_via_social_model.dart';
import 'package:where_to_go_today/src/modules/auth/models/request/register.dart';
import 'package:where_to_go_today/src/modules/auth/services/repository/auth_repository.dart';
import 'package:where_to_go_today/src/services/base/throw_exception_bloc.dart';
import 'package:where_to_go_today/src/modules/auth/services/events/auth_event.dart';
import 'package:where_to_go_today/src/modules/auth/services/states/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>
    with CanThrowExceptionBlocMixin {
  String? phone;

  final AuthRepository _repository;

  AuthBloc(this._repository) : super(LoadingState()) {
    on<SmsAuthEvent>(_handleSmsAuth);

    on<MetaAuthEvent>(_handleMetaAuth);

    on<AppleAuthEvent>(_handleAppleAuth);

    on<VkAuthEvent>(_handleVkAuth);

    on<GoogleAuthEvent>(_handleGoogleAuth);

    on<PhoneAuthEvent>(_handlePhoneAuth);

    on<LogoutEvent>(_handleLogout);

    on<RegistrationEvent>(_handleRegistration);

    on<SendPhoneEvent>(_handlePhone);
  }

  void _handleSmsAuth(SmsAuthEvent event, Emitter emit) async {
    emit(LoadingState());
    //TODO: нет запроса по авторизации по смс
    // await _repository.
    emit(SuccessState());
  }

  void _handleMetaAuth(event, emit) async {
    emit(LoadingState());
    await _repository.loginViaMeta(
      AuthViaSocialRequest(token: event.token),
    );
    emit(SuccessState());
  }

  void _handleAppleAuth(event, emit) async {
    emit(LoadingState());
    await _repository.loginViaApple(
      AuthViaSocialRequest(token: event.token),
    );
    emit(SuccessState());
  }

  void _handleVkAuth(event, emit) async {
    emit(LoadingState());
    await _repository.loginViaVk(
      AuthViaSocialRequest(token: event.token),
    );
    emit(SuccessState());
  }

  void _handleGoogleAuth(event, emit) async {
    emit(LoadingState());
    await _repository.loginViaGoogle(
      AuthViaSocialRequest(token: event.token),
    );
    emit(SuccessState());
  }

  void _handlePhoneAuth(event, emit) async {
    emit(LoadingState());
    await _repository.loginByPhone(
      AuthByPhoneRequest(
        phone: phone,
        firebaseToken: event.token,
      ),
    );
    emit(SuccessState());
  }

  void _handleLogout(event, emit) async {
    emit(LoadingState());
    await _repository.logout();
    emit(SuccessState());
  }

  void _handleRegistration(event, emit) async {
    emit(LoadingState());
    await _repository.register(
      RegisterRequest(
        name: event.name,
        lastName: event.lastName,
        phone: event.phone,
        birthDate: event.birthDate,
      ),
    );
    emit(SuccessState());
  }

  void _handlePhone(event, emit) async {
    emit(LoadingState());
    await _repository.register(
        //TODO: запихнуть в фаербейз
        phone = event.phone);
    emit(SuccessState());
  }
}
