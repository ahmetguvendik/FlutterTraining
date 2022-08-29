import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluuter_ornek/navigate/navigate_custom.dart';
import 'package:fluuter_ornek/navigate/navigator_routes.dart';
import 'package:fluuter_ornek/navigator/navigate_detail.dart';
import 'package:fluuter_ornek/navigator/navigate_home.dart';
import 'package:fluuter_ornek/package_learn.dart';
import 'package:fluuter_ornek/page_view_example.dart';
import 'package:fluuter_ornek/product/global/theme_notifier.dart';
import 'package:fluuter_ornek/reqres_resource/view/req_res_view.dart';
import 'package:fluuter_ornek/service/comment_learn_view.dart';
import 'package:fluuter_ornek/service/service_learn_view.dart';
import 'package:fluuter_ornek/service/service_post_learn_view.dart';
import 'package:fluuter_ornek/shared_learn_view.dart';
import 'package:fluuter_ornek/sheet.dart';
import 'package:fluuter_ornek/stateful_widget_example.dart';
import 'package:fluuter_ornek/statles_learn.dart';
import 'package:fluuter_ornek/tab_learn.dart';
import 'package:fluuter_ornek/text_example.dart';
import 'package:fluuter_ornek/text_field_example.dart';
import 'package:fluuter_ornek/theme/light_theme.dart';
import 'package:provider/provider.dart';

import 'alert_learn.dart';
import 'animated_learn.dart';
import 'appbar_example.dart';
import 'apple_example.dart';
import 'call_back_learn.dart';
import 'card_learn.dart';
import 'color_example.dart';
import 'container_example.dart';
import 'custom_widget_learn.dart';
import 'demos_example.dart';
import 'extension_learn.dart';
import 'form_learn_view.dart';
import 'image_example.dart';
import 'image_learn_200.dart';
import 'life_cycle_example.dart';
import 'list_tile_example.dart';
import 'list_view_example.dart';
import 'lottie_learn.dart';
import 'model_learn_view.dart';
import 'my_collections_demos.dart';
import 'my_example.dart';
import 'navigator_learn.dart';

void main() {
  runApp(MultiProvider(
    child: MyApp(),
    providers: [
      ChangeNotifierProvider(create: (_) => ThemeNotifier()),
    ],
    builder: (context, child) {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget with NavigateCustom{
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: (settings) {
        //Eğer olmayan  bir route verilirse buraya yollanır.
        return MaterialPageRoute(builder: (context) {
          return LottieLearn();
        });
      },
    //  routes: NavigatorRoutes().items,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: context.watch<ThemeNotifier>().currentTheme,
      // ThemeData.dark().copyWith(
      //  appBarTheme: const AppBarTheme(
      //    centerTitle: true,
      //  backgroundColor: Colors.transparent,
      //elevation: 0,
      // systemOverlayStyle: SystemUiOverlayStyle.light)),
      // home: LottieLearn(),
    );
  }
}
