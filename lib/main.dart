import 'package:fegno_task/src/core/theme/app.theme.dart';
import 'package:fegno_task/src/presentation/home/view/home.view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: HomeView(),
    );
  }
}
