import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel>
      _items; //Constucturdan gelen değişmeyecek diye late final kullanırız.

  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          padding: PaddingUtility.paddingHorizantal,
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _CatagoryCard(
              model: _items[index],
            );
          }),
    );
  }
}

class _CatagoryCard extends StatelessWidget {
  const _CatagoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility.paddingAll,
          child: Column(
            children: [
              Image.asset(_model.imagePath),
              Padding(
                padding: PaddingUtility.paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text("${_model.price} ETH")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.title, required this.imagePath, required this.price});
}

class PaddingUtility {
  static EdgeInsets paddingTop = EdgeInsets.only(top: 12);
  static EdgeInsets paddingAll = EdgeInsets.all(16.0);
  static EdgeInsets paddingHorizantal = EdgeInsets.symmetric(horizontal: 10);
}

class CollectionItems {
  late final List<CollectionModel> _items;

  CollectionItems() {
    _items = [
      CollectionModel(
          title: "Ahmet", imagePath: ProjectImages.imagePath, price: 3.14),
      CollectionModel(
          title: "Emre", imagePath: ProjectImages.imagePath, price: 3.14),
      CollectionModel(
          title: "Redif", imagePath: ProjectImages.imagePath, price: 3.14),
    ];
  }
}

class ProjectImages {
  static String imagePath = "assets/random.jpg";
}
