import 'package:flutter/material.dart';
import 'package:where_to_go_today/src/ui/res/typography/typography.dart';
import 'package:where_to_go_today/src/ui/res/colors/colors.dart';

class AppTheme {
  static ThemeData get lightTheme {

    return ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: AppTypography.fontFamily,
        textTheme: const TextTheme(
          headline2: AppTypography.semiBold24,
          headline5: AppTypography.semiBold16, //promo Bold
          headline6: AppTypography.light12, //label
          caption: AppTypography.normal16,
          subtitle1: AppTypography.semiBold16,
          bodyText1: AppTypography.normal16,
          bodyText2: AppTypography.semiBold18,
          button: AppTypography.normal16,
        ),
        //accentColor как добавить?
        colorScheme: const ColorScheme.light(
          primary: ProjectColors.primary,
          secondary: ProjectColors.secondary,
          background: ProjectColors.background,
          surface: ProjectColors.surface,
          onPrimary: ProjectColors.onPrimary,
          onSecondary: ProjectColors.onSecondary,
          onSurface: ProjectColors.onSurface,
          onBackground: ProjectColors.onBackground,
          onError: ProjectColors.onError,
        ),
        cardTheme: const CardTheme(
          color: Color(0xFFA9D899),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          constraints: BoxConstraints(
            minWidth: 327,
            minHeight: 52,
          ),
          contentPadding: EdgeInsets.only(top: 15, right: 16, bottom: 16, left: 16),
          border: OutlineInputBorder(),
        ),
    );
  }
}