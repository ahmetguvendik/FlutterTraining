import 'package:flutter/material.dart';
import 'package:fluuter_ornek/navigate/navigator_routes.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.large(
        onPressed: (){
          Navigator.of(context).pushReplacementNamed(NavigateRoute.detail.withParaf,arguments: "abc");
        },
        child: Text("Gönder"),
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(
            child: SizedBox(
              height: ProjectSizes.height,
              width: ProjectSizes.weight,
              child: Center(
                child: Text(ProjectTexts.CardName),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)));

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: roundedRectangleBorder,
      child: child,
    );
  }
}

class ProjectSizes {
  static double height = 100;
  static double weight = 300;
}

class ProjectTexts{
  static String CardName = "Ahmet";
}