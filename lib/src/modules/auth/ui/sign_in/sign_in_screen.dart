import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:where_to_go_today/src/modules/auth/ui/sign_in/sign_in_vm.dart';
import 'package:where_to_go_today/src/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/ui/uikit/base_button.dart';

class PhoneSignIn extends StatefulWidget {
  final PhoneSignInVM store;
  const PhoneSignIn({Key? key, required this.store}) : super(key: key);

  @override
  State<PhoneSignIn> createState() => _PhoneSignInState();
}

class _PhoneSignInState extends State<PhoneSignIn>
    with ViewModelDisposerMixin<PhoneSignIn, PhoneSignInVM> {
  @override
  PhoneSignInVM get vm => widget.store;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          inputFormatters: [vm.maskFormatter],
          controller: vm.phoneTextC,
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(
          height: 10,
        ),
        Observer(
          builder: (ctx) => BaseButton(
            label: 'Отправить',
            onPressed: vm.sendPhone,
            status: vm.sendPhoneBtnStatus,
          ),
        ),
      ],
    );
  }
}
