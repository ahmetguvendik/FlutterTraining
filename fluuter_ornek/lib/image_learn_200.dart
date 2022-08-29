import 'package:flutter/material.dart';

class ImageLearn200 extends StatefulWidget {
  const ImageLearn200({Key? key}) : super(key: key);

  @override
  State<ImageLearn200> createState() => _ImageLearn200State();
}

class _ImageLearn200State extends State<ImageLearn200> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePath.elma.toWidget(height: 100),
    );
  }
}

enum ImagePath { elma }

extension ImagePathExtenson on ImagePath {
  String path() {
    return "assets/$name.jpg";
  }

  Widget toWidget({double? height}) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme theme() {
    return Theme.of(this).textTheme; //themayı sürekli çağırmamak için kullanırız
  }
}
