import 'package:flutter/material.dart';
import 'package:fluuter_ornek/color_example.dart';

class DemosExample extends StatefulWidget {
  const DemosExample({Key? key}) : super(key: key);

  @override
  State<DemosExample> createState() => _DemosExampleState();
}

class _DemosExampleState extends State<DemosExample> {
  Color? _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _ChangeColor, icon: Icon(Icons.cancel_outlined))
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
              child: ColorExample(
            initialColor: _backgroundColor,
          ))
        ],
      ),
    );
  }

  void _ChangeColor() {
    setState(() {
      _backgroundColor = Colors.pink;
    });
  }
}
