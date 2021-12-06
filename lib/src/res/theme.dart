import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:where_to_go_today/src/res/typography.dart';

class AppTheme {
  static ThemeData get lightTheme {

    return ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: AppTypography.fontFamily,
        textTheme: TextTheme(
          headline2: AppTypography.semiBold(24, FontWeight.w600),
          headline5: AppTypography.semiBold(16, FontWeight.w800), //promo Bold
          headline6: AppTypography.normal(12), //label
          caption: AppTypography.normal(16),
          subtitle1: AppTypography.semiBold(16, FontWeight.w500),
          bodyText1: AppTypography.normal(16),
          bodyText2: AppTypography.semiBold(18, FontWeight.w500),
          button: AppTypography.normal(16),
        ),
        //accentColor как добавить?
        colorScheme: ColorScheme.light(
          primary: Color(0xFFEBCE0C),
          primaryVariant: Color(0xFFC7B800),
          secondary: Color(0xFF184E9E),
          background: Color(0xFFFFFF),
          surface: Color(0xFFFFFF),
          onPrimary: Color(0xFF000000),
          onSecondary: Color(0xFFFFFFFF),
          onSurface: Color(0xFF000000),
          onBackground: Color(0xFF000000),
          onError: Color(0xFFB00020),
        ),
        cardTheme: CardTheme(
          color: Color(0xFFA9D899),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        inputDecorationTheme: InputDecorationTheme(
          constraints: BoxConstraints(
            minWidth: 327,
            minHeight: 52,
          ),
          contentPadding: EdgeInsets.only(top: 16, right: 16, bottom: 16, left: 16)
        )
    );
  }
}