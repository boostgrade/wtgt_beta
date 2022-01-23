import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/ui/base/view_model.dart';
import 'package:where_to_go_today/src/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/ui/uikit/base_button.dart';

part 'code_vm.g.dart';

class CodeScreenVm = _CodeScreenVm with _$CodeScreenVm;

abstract class _CodeScreenVm extends ViewModel with Store {
  static const int expirationTime = 30;
  static const int codeLength = 6;

  @observable
  Status buttonStatus = Status.inactive;
  @observable
  int countDown = expirationTime;

  Timer? timer;
  TextEditingController codeController = TextEditingController();

  _CodeScreenVm(ErrorHandler errorHandler) : super(errorHandler) {
    codeController.addListener(() {
      onChangeCodeField(codeController.text);
    });
  }

  ///Запуск таймера
  @action
  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (timer.tick == expirationTime + 1) {
          timer.cancel();
        } else {
          countDown--;
        }
      },
    );
  }

  ///Функция изменения введенного кода
  @action
  void onChangeCodeField(String text) {
    buttonStatus =
        codeController.text.isEmpty ? Status.inactive : Status.active;
    if (checkCode()) {
      text = codeController.text;
    }
  }

  ///Функция отправки кода
  @action
  Future<void> sendCode() async {
    if (checkCode()) {
      buttonStatus = Status.loading;
      await Future.delayed(
        const Duration(seconds: 2),
      ); //Имитируем отправку кода из СМС
      buttonStatus = Status.inactive;
    }
  }

  ///Запросить код повторно
  @action
  Future<void> requestCodeAgain() async {
    await Future.delayed(
      const Duration(seconds: 2),
    ); //Имитируем повторню отправку кода
    if (countDown == 0) {
      countDown = expirationTime;
    }
  }

  ///Валидация кода из СМС
  bool checkCode() {
    return codeController.text.length <= codeLength ? true : false;
  }
}
