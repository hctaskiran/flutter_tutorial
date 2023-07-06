import 'package:flutter/material.dart';

class LightTheme {

  final _lightColor = _LightColor();

  late ThemeData theme = 

    ThemeData(
      buttonTheme: ButtonThemeData(colorScheme: ColorScheme.light(onPrimary: Colors.purple, onSecondary: _lightColor.blueMana)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.green),
      textTheme: ThemeData.light().textTheme.copyWith(
        subtitle1: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 203, 159, 25)),
      )  
  );
}

class _LightColor {
  final Color _textColor = Colors.green;
  final Color blueMana = Color.fromRGBO(98, 188, 248, 1);
}