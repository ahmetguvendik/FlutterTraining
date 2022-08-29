import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluuter_ornek/package/launch_manager.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package/loading_bar.dart';

class PackageLearn extends StatefulWidget {
  const PackageLearn({Key? key}) : super(key: key);

  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

class _PackageLearnState extends State<PackageLearn>
    with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          launchURL("hdfgdfgdfgrciyes.edu.tr/");
        }),
        appBar: AppBar(),
        body: LoadingBar());
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
