import 'package:flutter/material.dart';

class NavigateDetail extends StatefulWidget {
  final id;
  const NavigateDetail({Key? key, this.id}) : super(key: key);

  @override
  State<NavigateDetail> createState() => _NavigateDetailState();
}

class _NavigateDetailState extends State<NavigateDetail> {
  String? _id;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final _modelId = ModalRoute.of(context)?.settings.arguments;
      setState(() {
        _id = _modelId is String ? _modelId : widget.id;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_id.toString()),
      ),
    );
  }
}
