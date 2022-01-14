import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:where_to_go_today/src/ui/base/view_model.dart';
import '../../../../ui/uikit/base_button.dart';
import 'package:where_to_go_today/src/ui/errors_handling/error_handler.dart';
part 'code_vm.g.dart';

enum TimerState{ started,expired,update }
enum ScreenState{ idle,loading,error }

class CodeScreenVm = _CodeScreenVm with _$CodeScreenVm;

abstract class _CodeScreenVm extends ViewModel with Store{

  @observable
  Status buttonStatus = Status.inactive;
  @observable
  ScreenState screenState = ScreenState.idle;

  _CodeScreenVm(ErrorHandler errorHandler) : super(errorHandler);

  @action
  void onChangeCodeField(String text){}

  @action
  void sendCode(){}

  @action
  void requestCodeAgain(){}

}