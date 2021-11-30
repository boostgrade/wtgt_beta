import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/ui/res/colors/colors.dart';

abstract class AppTypography {

  static const String fontFamily='Montserrat';

  static const TextStyle light12 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
    color: ProjectColors.textColorPrimary,);

  static const TextStyle light16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    color: ProjectColors.textColorPrimary,);

  static const TextStyle normal16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    color: ProjectColors.textColorPrimary,);

  static const TextStyle normal18 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
    color: ProjectColors.textColorPrimary,);

  static const TextStyle semiBold12 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 12.0,
    color: ProjectColors.textColorPrimary,);

  static const TextStyle semiBold16 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    color: ProjectColors.textColorPrimary,);

  static const TextStyle semiBold24 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    color:  ProjectColors.textColorPrimary,);



  TextStyle semiBold(double fontSize,FontWeight fontWeight)=>TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: const Color(0x00000000),);

}