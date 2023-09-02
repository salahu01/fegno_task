import 'package:flutter/material.dart';

extension ContextX on BuildContext {
  //* This geter for get theme
  ThemeData get theme => Theme.of(this);

  //* this methord for navigate to page
  Future push(Widget view) => Navigator.push(this, MaterialPageRoute(builder: (context) => view));

  //* this methord for to previous page
  void pop() => Navigator.pop(this);

  //* This methord for get sceen size
  Size get sizeOf => MediaQuery.sizeOf(this);
}
