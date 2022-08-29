import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key, this.username}) : super(key: key);
  final String? username;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ProjectText.nameCustomer,
            style: ProjectStyle.welcomeStyle,
            ),
            Text(
              ProjectText.nameCustomer2,
              style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.blue),
            ),
            Text(username ?? '',style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColors.welcomeColor),)
          ],
        ),
      ),
    );
  }
}

class ProjectStyle{
  static TextStyle welcomeStyle = const TextStyle(
      color: Colors.amber,
      fontSize: 24,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
  );
}

class ProjectColors{
  static Color textColor = Colors.amber;
  static Color welcomeColor = Colors.blue;
}

class ProjectText{
  static String nameCustomer = "Ahmet";
  static String nameCustomer2 = "Emre";
}