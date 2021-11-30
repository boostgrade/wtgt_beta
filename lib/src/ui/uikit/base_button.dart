import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/res/typography.dart';
import 'package:where_to_go_today/src/ui/res/colors/colors.dart';
import 'package:where_to_go_today/src/ui/res/typography/typography.dart';

enum Status { active, inavctive, loading }
class BaseButton extends StatefulWidget{

  final String label;
  final void Function() onPressed;

  const BaseButton(
      {Key? key,required this.label, required this.onPressed,}) : super(key : key);

  @override
  State<StatefulWidget> createState() {
    return _BaseButtonState();
  }

}
class _BaseButtonState extends State<BaseButton> {
  final Status status=Status.active;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.status == Status.inavctive ? 0.4 : 1.0,
      child: ElevatedButton(
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
        onPressed: widget.status == Status.inavctive
            ? ()=>{}
            : onTap(widget.onPressed),
        child: Text(
          widget.label,
          style: AppTypography.normal16,
        ),
      ),
    );
  }
  onTap(void Function() onPressed){
    widget.status=Status.loading;
    onPressed;
    widget.status = Status.active;
  }
}
