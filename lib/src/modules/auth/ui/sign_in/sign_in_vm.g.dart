// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PhoneSignInVM on _PhoneSignInVM, Store {
  final _$sendPhoneBtnStatusAtom =
      Atom(name: '_PhoneSignInVM.sendPhoneBtnStatus');

  @override
  Status get sendPhoneBtnStatus {
    _$sendPhoneBtnStatusAtom.reportRead();
    return super.sendPhoneBtnStatus;
  }

  @override
  set sendPhoneBtnStatus(Status value) {
    _$sendPhoneBtnStatusAtom.reportWrite(value, super.sendPhoneBtnStatus, () {
      super.sendPhoneBtnStatus = value;
    });
  }

  final _$_PhoneSignInVMActionController =
      ActionController(name: '_PhoneSignInVM');

  @override
  void onPhoneChangeText(String phone) {
    final _$actionInfo = _$_PhoneSignInVMActionController.startAction(
        name: '_PhoneSignInVM.onPhoneChangeText');
    try {
      return super.onPhoneChangeText(phone);
    } finally {
      _$_PhoneSignInVMActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendPhone() {
    final _$actionInfo = _$_PhoneSignInVMActionController.startAction(
        name: '_PhoneSignInVM.sendPhone');
    try {
      return super.sendPhone();
    } finally {
      _$_PhoneSignInVMActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sendPhoneBtnStatus: ${sendPhoneBtnStatus}
    ''';
  }
}
