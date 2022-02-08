import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:where_to_go_today/src/modules/auth/ui/code/code_vm.dart';
import 'package:where_to_go_today/src/ui/base/view_model_disposer_mixin.dart';
import 'package:where_to_go_today/src/ui/res/colors/colors.dart';
import 'package:where_to_go_today/src/ui/res/icons/app_images.dart';
import 'package:where_to_go_today/src/ui/res/typography/typography.dart';
import 'package:where_to_go_today/src/ui/uikit/base_button.dart';

///Экран отправки кода из СМС
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
    vm.startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 46,
            ),
            Center(
              child: Image.asset(AppImages.wtgtLogo),
            ),
            SizedBox(
              height: 52,
              child: TextField(
                cursorColor: ProjectColors.buttonStrokeColor,
                controller: vm.codeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 15.0),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    borderSide:
                        BorderSide(color: ProjectColors.buttonStrokeColor),
                  ),
                  hintText: AppLocalizations.of(context)!.codeScreenHint,
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              child: vm.countDown == 0
                  ? InkWell(
                      onTap: () => widget.vm.requestCodeAgain(),
                      child: Text(
                        AppLocalizations.of(context)!.codeAgainName,
                        style: AppTypography.normal16underlined,
                      ),
                    )
                  : Text.rich(TextSpan(
                      children: [
                        TextSpan(
                          text: AppLocalizations.of(context)!.newCodeViaName,
                          style: AppTypography.normal16,
                        ),
                        TextSpan(
                          text: ': ${widget.vm.countDown}',
                          style: AppTypography.timerGreen,
                        ),
                      ],
                    )),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 56),
              child: BaseButton(
                label: AppLocalizations.of(context)!.codeBtnName,
                status: vm.buttonStatus,
                onPressed: vm.sendCode,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
