import 'package:flutter/material.dart';
import 'package:fluuter_ornek/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user1 = PostModel1("Ahmet", 1, 2, "deneme");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user1.updateBody("Aasdasfas");
          });
        },
      ),
      body: Center(
        child: Text(user1.body ?? ''),
      ),
    );
  }
}
