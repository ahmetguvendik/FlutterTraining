import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final Future<void> Function() onPressed;

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  bool _isLoading = false;

  void updateLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async{
          updateLoading();
          await widget.onPressed.call();
          updateLoading();
        },
        child: _isLoading ? CircularProgressIndicator() : Text(widget.title));
  }
}
