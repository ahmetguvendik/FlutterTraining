import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              width: 100,
              height: 200,
              child: _CustomImage(
                path: ImageItems.appleOnlyPath,
              ))
        ],
      ),
    );
  }
}

class ImageItems {
  static String apple = "assets/elma.jpg";
  static String appleOnlyPath = "elma";
}

class _CustomImage extends StatelessWidget {
  const _CustomImage({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath(),
      fit: BoxFit.cover,
    );
  }

  String _nameWithPath() => "assets/$path.jpg";
}
