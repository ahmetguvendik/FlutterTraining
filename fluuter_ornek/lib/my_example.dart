import 'package:flutter/material.dart';
import 'package:fluuter_ornek/my_collections_demos.dart';

class MyExample extends StatefulWidget {
  const MyExample({Key? key}) : super(key: key);

  @override
  State<MyExample> createState() => _MyExampleState();
}

class _MyExampleState extends State<MyExample> {
  late final List<ProjectModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      ProjectModel(
          body: "Fujifilm",
          title: "Mini 11 BTS",
          price: 271,
          imagaPath: "assets/kamera.jpg"),
      ProjectModel(
          body: "Fujifilm",
          title: "Mini 11 BTS",
          price: 271,
          imagaPath: "assets/kamera.jpg"),
      ProjectModel(
          body: "Fujifilm",
          title: "Mini 11 BTS",
          price: 271,
          imagaPath: "assets/kamera.jpg"),
      ProjectModel(
          body: "Fujifilm",
          title: "Mini 11 BTS",
          price: 271,
          imagaPath: "assets/kamera.jpg"),
      ProjectModel(
          body: "Fujifilm",
          title: "Mini 11 BTS",
          price: 271,
          imagaPath: "assets/kamera.jpg"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: ProjectSizes.height,
              width: ProjectSizes.weight,
              child: Padding(
                padding: ProjectPadding.horizontalPadding,
                child: _MyCard(
                  model: _items[index],
                ),
              ),
            );
          }),
    );
  }
}

class _MyCard extends StatelessWidget {
  const _MyCard({
    Key? key,
    required ProjectModel model,
  })  : _model = model,
        super(key: key);

  final ProjectModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.asset(_model.imagaPath),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: ProjectPadding.horizontalPadding,
                child: Text(
                  _model.title,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              Padding(
                padding: ProjectPadding.horizontalPadding,
                child: Text(
                  _model.body,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              Padding(
                padding:
                     ProjectPadding.horizontalVerticalPadding,
                child: Text("${_model.price} Dolar"),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectModel {
  String imagaPath;
  String title;
  String body;
  double price;

  ProjectModel(
      {required this.body,
      required this.title,
      required this.price,
      required this.imagaPath});
}

class ProjectPadding {
  static EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 10);
  static EdgeInsets horizontalVerticalPadding = EdgeInsets.symmetric(horizontal: 10, vertical: 2);
}

class ProjectSizes{
  static double height = 100;
  static double weight = 100;
}