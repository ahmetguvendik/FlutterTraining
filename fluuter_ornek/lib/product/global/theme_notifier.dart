import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLightThema = false;

  void changeTheme() {
    isLightThema = !isLightThema;
    notifyListeners();
  }

  ThemeData get currentTheme =>
      isLightThema ? ThemeData.light() : ThemeData.dark();
}
