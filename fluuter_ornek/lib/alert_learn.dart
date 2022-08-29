import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              //  barrierDismissible: false,
              context: context,
              builder: (context) {
                return _ImageZoomDialog();
              });
        },
        child: Text(Keys.click),
      ),
    );
  }
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: InteractiveViewer(
          child: Image.asset(
        "assets/elma.jpg",
        height: 300,
      )),
    );
  }
}

class _UpdateAlert extends StatelessWidget {
  const _UpdateAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(Keys.updateTitle),
      actions: [
        ElevatedButton(onPressed: () {}, child: Text(Keys.update)),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(Keys.close))
      ],
    );
  }
}

class Keys {
  static String updateTitle = "Yeni Güncelleme var";
  static String update = "Güncelle";
  static String close = "Kapat";
  static String click = "Click";
}

class UpdateDialog extends AlertDialog {
  final BuildContext context;

  UpdateDialog(
    this.context, {
    Key? key,
  }) : super(title: Text(Keys.updateTitle), actions: [
          ElevatedButton(onPressed: () {}, child: Text(Keys.update)),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(Keys.close))
        ]);
}
