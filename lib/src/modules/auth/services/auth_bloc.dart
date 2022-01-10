import 'package:bloc/bloc.dart';
import 'package:where_to_go_today/src/modules/auth/services/events/auth_event.dart';
import 'package:where_to_go_today/src/modules/auth/services/states/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  AuthBloc() : super(State()) {

    on<SmsAuthEvent>((event, emit) {
      //делаем что-то
      //изменяем состояние
      emit(EmittedState());
    });

    on<ExternalAuthEvent>((event, emit) {
      //делаем что-то
      //изменяем состояние
      emit(EmittedState());
    });

    on<PhoneAuthEvent>((event, emit) {
      //делаем что-то
      //изменяем состояние
      emit(EmittedState());
    });

    on<LogoutEvent>((event, emit) {
      //делаем что-то
      //изменяем состояние
      emit(EmittedState());
    });

    on<RegistrationEvent>((event, emit) {
      //делаем что-то
      //изменяем состояние
      emit(EmittedState());
    });
  }
}

