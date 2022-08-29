import 'package:flutter/material.dart';

class ListTileExample extends StatelessWidget {
  const ListTileExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children:  [
                Expanded(flex:4,child: Container(color: Colors.red)),
                Expanded(flex:2,child: Container(color: Colors.blue)),
                Expanded(flex:3,child: Container(color: Colors.pink)),
                Expanded(flex:1,child: Container(color: Colors.green)),
              ],
            ),
          ),
          const Spacer(
            flex: 7,
          )
        ],
      ),
    );
  }
}
