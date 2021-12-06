import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/ui/res/colors/colors.dart';
import 'package:where_to_go_today/src/ui/res/typography/typography.dart';

enum Status {
  active,
  inactive,
  loading,
}
///состояния кнопки Status: active - кнопка активна, inactive -  кнопка неактивна,loading - состояние загрузки


///Базовый компонент кнопки BaseButton
///В конструктор передается label - надпись внутри кнопки,
///onPressed - функиця-обработчик нажатия
///status - состояние кнопки
///Ссылка на виджет Figma: https://www.figma.com/file/8wRDN0M82bIuRZS6Uomv8X/Where-to-go-today%3F?node-id=254%3A1106

class BaseButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;
  final Status status;

  const BaseButton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            side: BorderSide(
              color: ProjectColors.buttonStrokeBlue,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        backgroundColor:
        MaterialStateProperty.all(ProjectColors.backgroundYellow),
      ),
      onPressed: status == Status.inactive ? null : onPressed,
      child: Container(
        padding: status == Status.loading
            ? const EdgeInsets.symmetric(vertical: 8)
            : const EdgeInsets.only(top: 15, bottom: 10),
        child: status == Status.loading
            ? const SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(
            color: ProjectColors.buttonStrokeBlue,
          ),
        )
            : Opacity(
          opacity: status == Status.inactive
              ? 0.4
              : 1.0,
        child: Text(
          label,
          style: AppTypography.normal16,
        ),
        ),
      ),
    );
  }
}
