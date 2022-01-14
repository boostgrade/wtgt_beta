// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_vm.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CodeScreenVm on _CodeScreenVm, Store {
  final _$buttonStatusAtom = Atom(name: '_CodeScreenVm.buttonStatus');

  @override
  Status get buttonStatus {
    _$buttonStatusAtom.reportRead();
    return super.buttonStatus;
  }

  @override
  set buttonStatus(Status value) {
    _$buttonStatusAtom.reportWrite(value, super.buttonStatus, () {
      super.buttonStatus = value;
    });
  }

  final _$screenStateAtom = Atom(name: '_CodeScreenVm.screenState');

  @override
  ScreenState get screenState {
    _$screenStateAtom.reportRead();
    return super.screenState;
  }

  @override
  set screenState(ScreenState value) {
    _$screenStateAtom.reportWrite(value, super.screenState, () {
      super.screenState = value;
    });
  }

  final _$_CodeScreenVmActionController =
      ActionController(name: '_CodeScreenVm');

  @override
  void onChangeCodeField(String text) {
    final _$actionInfo = _$_CodeScreenVmActionController.startAction(
        name: '_CodeScreenVm.onChangeCodeField');
    try {
      return super.onChangeCodeField(text);
    } finally {
      _$_CodeScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendCode() {
    final _$actionInfo = _$_CodeScreenVmActionController.startAction(
        name: '_CodeScreenVm.sendCode');
    try {
      return super.sendCode();
    } finally {
      _$_CodeScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  void requestCodeAgain() {
    final _$actionInfo = _$_CodeScreenVmActionController.startAction(
        name: '_CodeScreenVm.requestCodeAgain');
    try {
      return super.requestCodeAgain();
    } finally {
      _$_CodeScreenVmActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
buttonStatus: ${buttonStatus},
screenState: ${screenState}
    ''';
  }
}
