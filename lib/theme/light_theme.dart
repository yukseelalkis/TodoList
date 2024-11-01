import 'package:flutter/material.dart';

class LightTheme {
  late ThemeData theme;
  LightTheme() {
    theme = ThemeData(
      primarySwatch: Colors.indigo,
      brightness: Brightness.light,
      primaryColor: const Color(0xff3f51b5),
      scaffoldBackgroundColor: const Color(0xfffafafa),
      cardColor: Colors.white,
      dividerColor: const Color(0x1f000000),
      highlightColor: const Color(0x66bcbcbc),
      splashColor: const Color(0x66c8c8c8),
      unselectedWidgetColor: const Color(0x8a000000),
      disabledColor: const Color(0x61000000),
      secondaryHeaderColor: const Color(0xffe8eaf6),
      colorScheme: const ColorScheme.light(
        primary: Color(0xff3f51b5),
        onPrimary: Colors.white,
        secondary: Color(0xff3f51b5),
        onSecondary: Colors.white,
        surface: Colors.white,
        background: Color(0xff9fa8da),
        error: Color(0xffd32f2f),
        onBackground: Colors.white,
      ),
      buttonTheme: ButtonThemeData(
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        buttonColor: const Color(0xff3f51b5),
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.white,
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline6: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodyText2: TextStyle(
          fontSize: 14.0,
          color: Color(0xdd000000),
        ),
        subtitle1: TextStyle(
          color: Color(0xff000000),
        ),
        button: TextStyle(
          color: Colors.white,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(color: Color(0xdd000000)),
        hintStyle: const TextStyle(color: Color(0x8a000000)),
        filled: true,
        fillColor: const Color(0xfff5f5f5),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff000000), width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      primaryIconTheme: const IconThemeData(color: Colors.white),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Color(0xff3f51b5),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      chipTheme: const ChipThemeData(
        backgroundColor: Color(0xffe0e0e0),
        labelStyle: TextStyle(color: Colors.black),
        secondaryLabelStyle: TextStyle(color: Colors.white),
        secondarySelectedColor: Color(0xff3f51b5),
        selectedColor: Color(0xffe8eaf6),
        shape: StadiumBorder(),
        padding: EdgeInsets.all(4.0),
      ),
    );
  }
}
