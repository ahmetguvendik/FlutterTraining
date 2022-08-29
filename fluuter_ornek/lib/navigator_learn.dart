import 'package:flutter/material.dart';
import 'package:fluuter_ornek/card_learn.dart';

class NavigatorLearn extends StatefulWidget {
  const NavigatorLearn({Key? key}) : super(key: key);

  @override
  State<NavigatorLearn> createState() => _NavigatorLearnState();
}

class _NavigatorLearnState extends State<NavigatorLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NavigatorManager.navigateToWidget(context, CardLearn());
        },
        child: const Icon(Icons.arrow_circle_left_outlined),
      ),
    );
  }
}

class NavigatorManager {
  static void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}
