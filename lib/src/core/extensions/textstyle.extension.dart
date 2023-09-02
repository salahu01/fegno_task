import 'package:fegno_task/src/core/theme/app.colors.dart';
import 'package:flutter/material.dart';

extension TextStyleX on TextStyle {
  TextStyle get light => copyWith(color: Colors.white);
  TextStyle get dark => copyWith(color: Colors.black);
  TextStyle get accent => copyWith(color: AppColors.accent);
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);
}
