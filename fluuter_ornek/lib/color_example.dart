import 'package:flutter/material.dart';

class ColorExample extends StatefulWidget {
  const ColorExample({Key? key, required this.initialColor}) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorExample> createState() => _ColorExampleState();
}

class _ColorExampleState extends State<ColorExample> {
  Color? colors;

  @override
  void initState() {
    super.initState();
    colors = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorExample oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor != widget.initialColor &&
        widget.initialColor != null) {
      changeBackground(widget.initialColor!);
    }
  }

  void changeBackground(Color color) {
    setState(() {
      colors = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _ColorOnTap, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Red"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Yellow"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Blue"),
      ]),
    );
  }

  void _ColorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackground(Colors.red);
    } else if (value == _MyColors.blue.index) {
      changeBackground(Colors.blue);
    } else if (value == _MyColors.yellow.index) {
      changeBackground(Colors.yellow);
    }
  }
}

enum _MyColors { red, yellow, blue }
