import 'dart:ui';

abstract class AppTypography {

  static const String fontFamily='Montserrat';

  final TextStyle light12 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
    color: const Color(0x00000000),);

  final TextStyle light16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    color: const Color(0x00000000),);

  final TextStyle normal16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    color: const Color(0x00000000),);

  final TextStyle normal18 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
    color: const Color(0x00000000),);

  final TextStyle semiBold12 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 12.0,
    color: const Color(0x00000000),);

  final TextStyle semiBold16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    color: const Color(0x00000000),);

  final TextStyle semiBold24 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    color: const Color(0x00000000),);



  TextStyle semiBold(double fontSize,FontWeight fontWeight)=>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: const Color(0x00000000),);

}