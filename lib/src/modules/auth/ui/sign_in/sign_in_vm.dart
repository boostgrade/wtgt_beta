import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/modules/auth/services/auth_bloc.dart';
import 'package:where_to_go_today/src/modules/auth/services/events/auth_event.dart';
import 'package:where_to_go_today/src/modules/auth/services/states/auth_state.dart';
import 'package:where_to_go_today/src/ui/base/view_model.dart';
import 'package:where_to_go_today/src/ui/errors_handling/error_handler.dart';
import 'package:where_to_go_today/src/ui/uikit/base_button.dart';

part 'sign_in_vm.g.dart';

class PhoneSignInVM = _PhoneSignInVM with _$PhoneSignInVM;

abstract class _PhoneSignInVM extends ViewModel with Store {
  final TextEditingController phoneTextC = TextEditingController();

  MaskTextInputFormatter maskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
  );

  @observable
  Status sendPhoneBtnStatus = Status.inactive;

  static const int _phone = 10;

  final AuthBloc _block;

  _PhoneSignInVM(this._block, ErrorHandler errorHandler) : super(errorHandler) {
    observeBloc<AuthState, AuthBloc>(_block, _handleStates);

    phoneTextC.addListener(() {
      onPhoneChangeText(phoneTextC.text);
    });
  }

  @action
  void onPhoneChangeText(String phone) {
    String _unmaskedText = maskFormatter.getUnmaskedText();
    sendPhoneBtnStatus =
        _unmaskedText.length == _phone ? Status.active : Status.inactive;
  }

  @action
  void sendPhone() {
    sendPhoneBtnStatus = Status.loading;
    _block.add(SendPhoneEvent(phoneTextC.text));
  }

  void _handleStates(AuthState state) {
    if (state is LoadingState) {
      print('Loading state');
    } else if (state is SuccessState) {
      print('Success state');
    } else {
      print('Error state');
    }
  }
}
