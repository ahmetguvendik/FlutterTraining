import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Hello"),
        leading: IconButton (onPressed: () {  }, icon: Icon(Icons.backspace_sharp,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.message))
        ],
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
    );
  }
}
