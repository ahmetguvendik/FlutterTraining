import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  final String text1 = "Ahmet";
  final String text2 = "Ahmet1";
  final String text3 = "Ahmet2";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:  [
          TextWidget(text: text1),
          TextWidget(text: text2),
          TextWidget(text: text3),

        ],
      ),
    );
  }
}
class TextWidget extends StatelessWidget {
  const TextWidget({Key? key,required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline3,);
  }
}
