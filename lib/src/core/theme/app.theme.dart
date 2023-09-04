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
    useMaterial3: false,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.accent,
      titleTextStyle: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.w600),
      centerTitle: false,
    ),
  );
}
