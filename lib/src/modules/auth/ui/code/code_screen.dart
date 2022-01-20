import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/modules/auth/ui/code/code_vm.dart';
import 'package:where_to_go_today/src/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/ui/res/colors/colors.dart';
import 'package:where_to_go_today/src/ui/res/typography/typography.dart';
import 'package:where_to_go_today/src/ui/uikit/base_button.dart';

class CodeScreen extends StatefulWidget {
  final CodeScreenVm vm;

  const CodeScreen({Key? key, required this.vm}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CodeScreenState();
  }
}

class _CodeScreenState extends State<CodeScreen>
    with ViewModelDisposerMixin<CodeScreen, CodeScreenVm> {
  @override
  CodeScreenVm get vm => widget.vm;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 55),
        child: BaseButton(
          label: 'Отправить',
          status: vm.buttonStatus,
          onPressed: vm.sendCode,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 46,
          ),
          Center(
            child: Image.asset('assets/images/wtgt.png'),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                border: Border.all(color: ProjectColors.buttonStrokeColor),
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    cursorColor: ProjectColors.buttonStrokeColor,
                    controller: vm.codeController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Код из смс',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 34),
            child: vm.start == 0
                ? InkWell(
                    onTap: () => widget.vm.requestCodeAgain(),
                    child: const Text(
                      'Запросить код повторно',
                      style: AppTypography.normal16underlined,
                    ),
                  )
                : Row(
                    children: [
                      const Text(
                        'Новый код через: ',
                        style: AppTypography.normal16,
                      ),
                      Text(
                        '${widget.vm.start} сек',
                        style: const TextStyle(
                          color: ProjectColors.activeColor,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    vm.timer?.cancel();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CodeScreen(
      vm: null,
    ),
  ));
}
