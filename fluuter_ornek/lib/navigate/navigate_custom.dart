import 'package:flutter/material.dart';
import 'package:fluuter_ornek/card_learn.dart';
import 'package:fluuter_ornek/lottie_learn.dart';
import 'package:fluuter_ornek/navigate/navigator_routes.dart';
import 'package:fluuter_ornek/navigator/navigate_detail.dart';
import 'package:fluuter_ornek/navigator/navigate_home.dart';

mixin NavigateCustom on Widget {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name?.isEmpty ?? true) {
      return _navigateToNormal(LottieLearn());
    }

    final _routes = routeSettings.name == NavigatorRoutes.paraft
        ? NavigateRoute.init
        : NavigateRoute.values.byName(routeSettings.name!.substring(1));

    switch (_routes) {
      case NavigateRoute.home:
        return _navigateToNormal(NavigateHome());
      case NavigateRoute.detail:
        return _navigateToNormal(NavigateDetail());
      case NavigateRoute.init:
        return _navigateToNormal(CardLearn());
    }
  }
}

Route<dynamic>? _navigateToNormal(Widget child) {
  return MaterialPageRoute(builder: (context) {
    return child;
  });
}
