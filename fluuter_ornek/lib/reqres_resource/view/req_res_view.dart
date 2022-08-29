import 'package:flutter/material.dart';
import 'package:fluuter_ornek/reqres_resource/service/proje_network_manager.dart';
import 'package:fluuter_ornek/reqres_resource/service/reqres_service.dart';
import 'package:fluuter_ornek/reqres_resource/viewModel/req_res_provider.dart';
import 'package:provider/provider.dart';

import '../../product/global/theme_notifier.dart';
import '../../product/service/project_network_manager.dart';
import '../model/resource_model.dart';
import '../viewModel/req_res_view_model.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({Key? key}) : super(key: key);

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends State<ReqResView> with ProjectDioMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
      create: (BuildContext context) {
        return ReqResProvider(ReqresService(ProjectNetworkManager.instance.service));
      },
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<ThemeNotifier>().changeTheme();
            },
          ),
          appBar: AppBar(),
          body: _resourceListView(
              context, context.watch<ReqResProvider>().resourceModel),
        );
      },
    );
  }

  ListView _resourceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(items[index].name ?? '');
        });
  }
}
