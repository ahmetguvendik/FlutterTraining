import 'package:flutter/material.dart';

import '../model/resource_model.dart';
import '../service/reqres_service.dart';

class ReqResProvider extends ChangeNotifier {
  ReqResProvider(this.reqresService) {
    _fetch();

  }

  final IReqresService reqresService;
  List<Data> resourceModel = [];

  Future<void> _fetch() async {
    resourceModel = (await reqresService.fetchResourceItem())?.data ?? [];
    notifyListeners();
  }
}
