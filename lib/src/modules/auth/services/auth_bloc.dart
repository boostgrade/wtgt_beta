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
  String? name;
  String? lastName;
  DateTime? birthDate;
  String? token;

  final AuthRepository _repository;

  AuthBloc(this._repository) : super(LoadingState()) {
    on<SmsAuthEvent>((event, emit) async {
      emit(LoadingState());
      //TODO: нет запроса по авторизации по смс
      // await _repository.
      emit(SuccessState());
    });

    on<MetaAuthEvent>((event, emit) async {
      emit(LoadingState());
      await _repository.loginViaMeta(
        AuthViaSocialRequest(token: token),
      );
      emit(SuccessState());
    });

    on<AppleAuthEvent>((event, emit) async {
      emit(LoadingState());
      await _repository.loginViaApple(
        AuthViaSocialRequest(token: token),
      );
      emit(SuccessState());
    });

    on<VkAuthEvent>((event, emit) async {
      emit(LoadingState());
      await _repository.loginViaVk(
        AuthViaSocialRequest(token: token),
      );
      emit(SuccessState());
    });

    on<GoogleAuthEvent>((event, emit) async {
      emit(LoadingState());
      await _repository.loginViaGoogle(
        AuthViaSocialRequest(token: token),
      );
      emit(SuccessState());
    });

    on<PhoneAuthEvent>((event, emit) async {
      emit(LoadingState());
      await _repository.loginByPhone(
        AuthByPhoneRequest(
          phone: phone,
          firebaseToken: '',
        ),
      );
      emit(SuccessState());
    });

    on<LogoutEvent>((event, emit) async {
      emit(LoadingState());
      await _repository.logout();
      emit(SuccessState());
    });

    on<RegistrationEvent>((event, emit) async {
      emit(LoadingState());
      await _repository.register(
        RegisterRequest(
          name: name,
          lastName: lastName,
          phone: phone,
          birthDate: birthDate,
        ),
      );
      emit(SuccessState());
    });

    on<SendPhoneEvent>((event, emit) {
      emit(LoadingState());
      //TODO: запихнуть в фаербейз
      phone = event.phone;
      emit(SuccessState());
    });
  }
}
