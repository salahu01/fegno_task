import 'package:flutter/material.dart';

@immutable
final class AppTheme {
  //* This variable for store app light theme
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
      centerTitle: true,
    ),
    listTileTheme: const ListTileThemeData(
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w700),
      leadingAndTrailingTextStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        backgroundColor: Colors.deepPurple,
      ),
    ),
  );
}
