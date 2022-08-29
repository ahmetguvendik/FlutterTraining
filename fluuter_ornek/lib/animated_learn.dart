import 'package:flutter/material.dart';
import 'package:fluuter_ornek/image_learn_200.dart';

import 'animated_learn_model_view.dart';

class AniamatedLearn extends StatefulWidget {
  const AniamatedLearn({Key? key}) : super(key: key);

  @override
  State<AniamatedLearn> createState() => _AniamatedLearnState();
}

class _AniamatedLearnState extends AnimatedLearnModelView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildAnimatedCrossFade(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: chanceVisibility,
      ),
      body: Column(
        children: [
          //  buildAnimatedCrossFade(),
          AnimatedDefaultTextStyle(
              child: Text("Ahmet"),
              style: (isVisibilty
                      ? Theme.of(context).textTheme.headline1
                      : Theme.of(context).textTheme.subtitle2) ??
                  TextStyle(),
              duration: _ProjectDurations.normalDuration),
          AnimatedIcon(icon: AnimatedIcons.arrow_menu, progress: controller),
          AnimatedContainer(
            duration: _ProjectDurations.normalDuration,
            height: isVisibilty ? 0 : MediaQuery.of(context).size.height * 0.2,
            width: isVisibilty ? 0 : MediaQuery.of(context).size.width * 0.2,
            color: Colors.red,
          )
        ],
      ),
    );
  }

  AnimatedCrossFade buildAnimatedCrossFade() {
    return AnimatedCrossFade(
      crossFadeState:
          isVisibilty ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(seconds: 1),
      firstChild: Placeholder(),
      secondChild: SizedBox(),
    );
  }
}

class _ProjectDurations {
  static Duration normalDuration = Duration(seconds: 1);
}
