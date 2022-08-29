import 'package:flutter/material.dart';
import 'package:fluuter_ornek/product/constant/lottie_items.dart';
import 'package:fluuter_ornek/product/global/theme_notifier.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({Key? key}) : super(key: key);

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InkWell(
          onTap: () {
            controller.animateTo(isLight ? 0.5 : 1);
            isLight = !isLight;
            context.read<ThemeNotifier>().changeTheme();
          },
          child: Lottie.asset(LottieItems.themeChange.lottiePath,
              repeat: false, controller: controller)),
    );
  }
}
