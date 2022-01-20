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

  final _$timerStateAtom = Atom(name: '_CodeScreenVm.timerState');

  @override
  TimerState get timerState {
    _$timerStateAtom.reportRead();
    return super.timerState;
  }

  @override
  set timerState(TimerState value) {
    _$timerStateAtom.reportWrite(value, super.timerState, () {
      super.timerState = value;
    });
  }

  final _$timerAtom = Atom(name: '_CodeScreenVm.timer');

  @override
  Timer? get timer {
    _$timerAtom.reportRead();
    return super.timer;
  }

  @override
  set timer(Timer? value) {
    _$timerAtom.reportWrite(value, super.timer, () {
      super.timer = value;
    });
  }

  final _$startAtom = Atom(name: '_CodeScreenVm.start');

  @override
  int get start {
    _$startAtom.reportRead();
    return super.start;
  }

  @override
  set start(int value) {
    _$startAtom.reportWrite(value, super.start, () {
      super.start = value;
    });
  }

  final _$codeControllerAtom = Atom(name: '_CodeScreenVm.codeController');

  @override
  TextEditingController get codeController {
    _$codeControllerAtom.reportRead();
    return super.codeController;
  }

  @override
  set codeController(TextEditingController value) {
    _$codeControllerAtom.reportWrite(value, super.codeController, () {
      super.codeController = value;
    });
  }

  final _$sendCodeAsyncAction = AsyncAction('_CodeScreenVm.sendCode');

  @override
  Future<void> sendCode() {
    return _$sendCodeAsyncAction.run(() => super.sendCode());
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
timerState: ${timerState},
timer: ${timer},
start: ${start},
codeController: ${codeController}
    ''';
  }
}
