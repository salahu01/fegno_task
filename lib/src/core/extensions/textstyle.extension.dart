import 'package:flutter/material.dart';

extension TextStyleX on TextStyle {
  TextStyle get light => copyWith(color: Colors.white);
  TextStyle get dark => copyWith(color: Colors.black);
}
