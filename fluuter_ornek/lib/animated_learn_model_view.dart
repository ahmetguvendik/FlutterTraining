import 'package:flutter/material.dart';

import 'animated_learn.dart';

abstract class AnimatedLearnModelView extends State<AniamatedLearn> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isVisibilty = false;
  bool isOpocity = false;
  late AnimationController controller;

  void chanceVisibility() {
    setState(() {
      isVisibilty = !isVisibilty;
      isVisibilty ? controller.animateTo(0) : controller.animateTo(1);
    });
  }
}
