import 'package:flutter/material.dart';
import 'package:fluuter_ornek/password_text_field.dart';

class ExtensionLearn extends StatefulWidget {
  const ExtensionLearn({Key? key}) : super(key: key);

  @override
  State<ExtensionLearn> createState() => _ExtensionLearnState();
}

class _ExtensionLearnState extends State<ExtensionLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: WidgetSizes.containerHeight.value(),
            width: WidgetSizes.containerWeight.value(),
            color: Colors.pink,
          ),
          PasswordTextField()
        ],
      ),
    );
  }
}

enum WidgetSizes { containerHeight, containerWeight }

extension WiWidgetSizesExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.containerHeight:
        return 200;

      case WidgetSizes.containerWeight:
        return 100;
    }
  }
}
