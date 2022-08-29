import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            centerTitle: true,
            elevation: 0,
            color: _lightColor._appBarColor),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 24, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = Colors.red;
  final Color _appBarColor = Colors.green;
}
