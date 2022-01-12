import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/services/base/throw_exception_bloc.dart';
import 'package:where_to_go_today/src/modules/auth/services/events/auth_event.dart';
import 'package:where_to_go_today/src/modules/auth/services/states/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>
    with CanThrowExceptionBlocMixin {
  AuthBloc() : super(LoadingState()) {

    on<SmsAuthEvent>((event, emit) {
      emit(LoadingState());
      //делаем что-то
      //изменяем состояние
      emit(SuccessState());
    });

    on<ExternalAuthEvent>((event, emit) {
      emit(LoadingState());
      //делаем что-то
      //изменяем состояние
      emit(SuccessState());
    });

    on<PhoneAuthEvent>((event, emit) {
      emit(LoadingState());
      //делаем что-то
      //изменяем состояние
      emit(SuccessState());
    });

    on<LogoutEvent>((event, emit) {
      emit(LoadingState());
      //делаем что-то
      //изменяем состояние
      emit(SuccessState());
    });

    on<RegistrationEvent>((event, emit) {
      emit(LoadingState());
      //делаем что-то
      //изменяем состояние
      emit(SuccessState());
    });
  }
}

