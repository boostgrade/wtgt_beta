import 'package:flutter/cupertino.dart';

class AppTypography{

  static const String fontFamily='Montserrat';

  TextStyle normal(double fontSize)=>TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: fontSize,
    color: const Color(0x00000000));

  TextStyle SemiBold(double fontSize,FontWeight fontWeight)=>TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: const Color(0x00000000));

}