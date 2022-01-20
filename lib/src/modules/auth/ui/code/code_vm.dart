import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/ui/base/view_model.dart';
import 'package:where_to_go_today/src/ui/errors_handling/error_handler.dart';

import '../../../../ui/uikit/base_button.dart';

part 'code_vm.g.dart';

enum TimerState { started, expired, update }
enum ScreenState { idle, loading, error }

class CodeScreenVm = _CodeScreenVm with _$CodeScreenVm;

abstract class _CodeScreenVm extends ViewModel with Store {
  static const int expirationTime = 30;

  @observable
  Status buttonStatus = Status.inactive;
  @observable
  TimerState timerState = TimerState.started;
  @observable
  Timer? timer;
  @observable
  int start = expirationTime;
  @observable
  TextEditingController codeController = TextEditingController();

  _CodeScreenVm(ErrorHandler errorHandler) : super(errorHandler) {
    codeController.addListener(() {
      onChangeCodeField(codeController.text);
    });
  }

  ///Запуск таймера
  @action
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          timer.cancel();
        } else {
          start--;
        }
      },
    );
  }

  ///Функция изменения введенного кода
  @action
  void onChangeCodeField(String text) {
    codeController.text.isEmpty
        ? buttonStatus = Status.inactive
        : buttonStatus = Status.active;
    if (checkCode()) {
      text = codeController.text;
    }
  }

  ///Функция отправки кода
  @action
  Future<void> sendCode() async {
    if (checkCode()) {
      buttonStatus = Status.loading;
      await const Duration(seconds: 2); //Имитируем отправку кода из СМС
      buttonStatus = Status.inactive;
    }
  }

  @action
  void requestCodeAgain() {
    if (timerState == TimerState.expired) {
      start = expirationTime;
      timerState = TimerState.started;
    }
  }

  ///Валидация кода из СМС
  bool checkCode() {
    bool checkStatus = false;
    codeController.text.length < 4 ? checkStatus = true : checkStatus = false;

    return checkStatus;
  }
}
