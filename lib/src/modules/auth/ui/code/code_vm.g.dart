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

  final _$countDownAtom = Atom(name: '_CodeScreenVm.countDown');

  @override
  int get countDown {
    _$countDownAtom.reportRead();
    return super.countDown;
  }

  @override
  set countDown(int value) {
    _$countDownAtom.reportWrite(value, super.countDown, () {
      super.countDown = value;
    });
  }

  final _$sendCodeAsyncAction = AsyncAction('_CodeScreenVm.sendCode');

  @override
  Future<void> sendCode() {
    return _$sendCodeAsyncAction.run(() => super.sendCode());
  }

  final _$requestCodeAgainAsyncAction =
      AsyncAction('_CodeScreenVm.requestCodeAgain');

  @override
  Future<void> requestCodeAgain() {
    return _$requestCodeAgainAsyncAction.run(() => super.requestCodeAgain());
  }

  final _$_CodeScreenVmActionController =
      ActionController(name: '_CodeScreenVm');

  @override
  void startTimer() {
    final _$actionInfo = _$_CodeScreenVmActionController.startAction(
        name: '_CodeScreenVm.startTimer');
    try {
      return super.startTimer();
    } finally {
      _$_CodeScreenVmActionController.endAction(_$actionInfo);
    }
  }

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
  String toString() {
    return '''
buttonStatus: ${buttonStatus},
countDown: ${countDown}
    ''';
  }
}
