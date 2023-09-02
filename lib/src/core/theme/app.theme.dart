import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:flutter/material.dart';

@immutable
final class AppTheme {
  //* This variable for store app light theme
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.yellow,
      background: AppColors.background,
    ),
    primaryColor: AppColors.accent,
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      titleTextStyle: TextStyle(color: AppColors.black, fontSize: 24, fontWeight: FontWeight.w600),
      centerTitle: true,
    ),
    listTileTheme: const ListTileThemeData(
      titleTextStyle: TextStyle(color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w700),
      leadingAndTrailingTextStyle: TextStyle(color: AppColors.accent, fontSize: 18, fontWeight: FontWeight.w700),
      subtitleTextStyle: TextStyle(color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w900),
      contentPadding: EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 4),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: AppColors.accent,
      ),
    ),
  );
}
