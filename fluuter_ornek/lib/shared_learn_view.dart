import 'package:flutter/material.dart';

class SharedLearnView extends StatefulWidget {
  const SharedLearnView({Key? key}) : super(key: key);

  @override
  State<SharedLearnView> createState() => _SharedLearnViewState();
}

class _SharedLearnViewState extends State<SharedLearnView> {
  int _currentValue = 0;

  void _changeValue(String value) {
    final degerr = int.tryParse(value); //sadece int değerler için
    if (degerr != null) {
      setState(() {
        _currentValue = degerr;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_currentValue.toString())),
      body: TextFormField(onChanged: (value) {
        _changeValue(value);
      }),
    );
  }
}
