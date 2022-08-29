import 'package:flutter/material.dart';

class LifeCycleExample extends StatefulWidget {
  LifeCycleExample({Key? key, required this.message}) : super(key: key);
  String message;

  @override
  State<LifeCycleExample> createState() => _LifeCycleExampleState();
}

class _LifeCycleExampleState extends State<LifeCycleExample> {
  String _message = "";
  late bool _isOdd = false;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _CompiteItems();
  }

  void _CompiteItems() {
    if (_isOdd) {
      _message += " Ahmet";
    } else {
      _message += " Ahmet2";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_message)),
      body: _isOdd ? Text(_message) : Text(_message),
    );
  }
}
