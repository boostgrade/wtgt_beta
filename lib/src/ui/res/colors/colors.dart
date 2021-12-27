import 'dart:ui';

import 'package:flutter/material.dart';

abstract class ProjectColors {

  //ThemeData
  static const Color primary = _yellow;
  static const Color secondary = _darkBlue;
  static const Color background = _white;
  static const Color surface = _white;
  static const Color onPrimary = _black;
  static const Color onSecondary = _white;
  static const Color onSurface = _black;
  static const Color onBackground = _black;
  static const Color onError = _errorRed;

  //Decorate
  static const Color accentColor = _lightGreen;
  static const Color cardColor = _darkGreen;
  static const Color primaryDarkColor = _yellowDark;
  static const Color successColor = _green;
  static const Color onProcessColor = _orangeRed;
  static const Color whiteColor = _white;
  static const Color dividerColor = _grey;
  static const Color shadowColor = _grey;
  static const Color disabledColor = _darkGrey;
  static const Color errorColor = _orangeRed;
  static const Color activeColor = _green;
  static const Color textFieldColor = _brightGrey;
  static const Color textPrimaryColor = _black;
  static const Color buttonStrokeColor = _darkBlue;

//TODO: Основная палитра

  static const Color _yellow = Color(0xFFEBCE0C);
  static const Color _yellowDark = Color(0xFFC7B800);

  static const Color _white = Color(0xFFFFFFFF);
  static const Color _black = Color(0xFF000000);

  static const Color _grey = Color(0xFFDFDFDF);
  static const Color _darkGrey = Color(0xFF818C99);
  static const Color _brightGrey = Color(0xFFEBEDF0);

  static const Color _errorRed = Color(0xFFB00020);
  static const Color _orangeRed = Color(0xFFF2994A);

  static const Color _darkBlue = Color(0xFF184E9E);

  static const Color _lightGreen = Color(0xFFB8F09D);
  static const Color _green = Color(0xFF27AE60);
  static const Color _darkGreen = Color(0xFFA9D899);
}

