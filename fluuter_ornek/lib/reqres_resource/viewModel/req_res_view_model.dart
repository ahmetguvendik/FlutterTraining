import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluuter_ornek/product/service/project_network_manager.dart';

import '../model/resource_model.dart';
import '../service/reqres_service.dart';
import '../view/req_res_view.dart';

abstract class ReqResViewModel extends State<ReqResView> with ProjectDioMixin {
  late final IReqresService reqresService;
  List<Data> resourceModel = [];

  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(service);
    fetch();
  }

  Future<void> fetch() async {
    resourceModel = (await reqresService.fetchResourceItem())?.data ?? [];
  }
}
