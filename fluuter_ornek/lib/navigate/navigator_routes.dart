
import 'package:fluuter_ornek/card_learn.dart';

import '../navigator/navigate_detail.dart';
import '../navigator/navigate_home.dart';

class NavigatorRoutes {
  static const paraft = "/";
  final items = {
    paraft: (context) => CardLearn(),
    NavigateRoute.home.withParaf: (context) => NavigateHome(),
    NavigateRoute.detail.withParaf: (context) => NavigateDetail(),
  };
}

enum NavigateRoute {init, home, detail }

extension NavigateRouteExtension on NavigateRoute {
  String get withParaf => "/$name";
}
