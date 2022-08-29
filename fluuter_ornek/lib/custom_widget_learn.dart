import 'package:flutter/material.dart';

class CustomWidgetExample extends StatelessWidget {
  CustomWidgetExample({Key? key}) : super(key: key);
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomButton(
            title: title,
            onPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: _CustomButton(title: "title", onPressed: () {}))
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget
    with _ColorUtility, _PaddingUtility {
  _CustomButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);

  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: white,shape: StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: redColor),
          ),
        ));
  }
}

class _ColorUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8);
}
