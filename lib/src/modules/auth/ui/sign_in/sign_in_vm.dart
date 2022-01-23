import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/ui/base/view_model.dart';
import 'package:where_to_go_today/src/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/ui/uikit/base_button.dart';

part 'sign_in_vm.g.dart';

class PhoneSignInVM = _PhoneSignInVM with _$PhoneSignInVM;

abstract class _PhoneSignInVM extends ViewModel with Store {
  static const int phoneWithMask = 18;

  MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
  );

  @observable
  Status sendPhoneBtnStatus = Status.inactive;

  final TextEditingController phoneTextC = TextEditingController();

  _PhoneSignInVM(ErrorHandler errorHandler) : super(errorHandler) {
    phoneTextC.addListener(() {
      onPhoneChangeText(phoneTextC.text);
    });
  }

  @action
  void onPhoneChangeText(String phone) {
    sendPhoneBtnStatus =
        phone.length == phoneWithMask ? Status.active : Status.inactive;
  }

  @action
  void sendPhone() {
    sendPhoneBtnStatus = Status.loading;

    /// TODO: логика отправки
  }
}
