import 'package:flutter/material.dart';
import 'package:fluuter_ornek/product/language/language_items.dart';

class WelcomeButton extends StatefulWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  State<WelcomeButton> createState() => _WelcomeButtonState();
}

class _WelcomeButtonState extends State<WelcomeButton> {
  final String _welcomeTitle = LanguageItems.welcomeTitle;
  int _counter = 0;

  void addCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("$_welcomeTitle $_counter"),
      onPressed: addCounter,
    );
  }
}
