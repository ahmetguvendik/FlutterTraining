import 'package:flutter/material.dart';
import 'package:fluuter_ornek/product/welcome_button.dart';


class StatefulWidgetExample extends StatefulWidget {
  StatefulWidgetExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetExample> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  int count = 0;

  void addCounter() {
    setState(() {
      count++;
    });
  }

  void removeCounter() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(count.toString())),
          const SizedBox(
            height: 50,
          ),
         WelcomeButton()
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _AddButton(),
          _RemoveButton(),
        ],
      ),
    );
  }

  Padding _RemoveButton() {
    return Padding(
      padding: ProjectPAdding.leftPadding,
      child: FloatingActionButton(
        onPressed: () {
          removeCounter();
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _AddButton() {
    return FloatingActionButton(
      onPressed: () {
        addCounter();
      },
      child: const Icon(Icons.add),
    );
  }
}

class ProjectPAdding {
  static EdgeInsets leftPadding = const EdgeInsets.only(left: 10);
}
