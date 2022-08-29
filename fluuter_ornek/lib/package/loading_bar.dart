import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  LoadingBar({Key? key,this.size}) : super(key: key);
  double? size;
  final _defaultSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return SpinKitSquareCircle(
      color: Colors.green,
      size: size ?? _defaultSize,
    );
  }



}
