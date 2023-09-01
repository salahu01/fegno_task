import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Padding pad(double pad) => Padding(
        padding: EdgeInsets.all(pad),
        child: this,
      );

  Padding pSymmetric({double y = 0, double x = 0}) => Padding(
        padding: EdgeInsets.symmetric(vertical: y, horizontal: x),
        child: this,
      );
  Padding pOnly({double left = 0, double top = 0, double right = 0, double bottom = 0}) => Padding(
        padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
        child: this,
      );
}
