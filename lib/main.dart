import 'package:flutter/material.dart';
import 'package:ui_tasarim/home_screens.dart';
import 'package:ui_tasarim/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: LightTheme().theme,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}
