import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluuter_ornek/service/post_model.dart';
import 'package:fluuter_ornek/service/post_service.dart';

class ServicePostLearnView extends StatefulWidget {
  const ServicePostLearnView({Key? key}) : super(key: key);

  @override
  State<ServicePostLearnView> createState() => _ServicePostLearnViewState();
}

class _ServicePostLearnViewState extends State<ServicePostLearnView> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _network;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";
  String? message;
  TextEditingController _titleControler = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();
  late final IPostService _postService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _postService = PostService();
    _network = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void changeLoading() {
    _isLoading = !_isLoading;
  }

  Future<void> AddPostAdvance(PostModel model) async {
    changeLoading();
    final response = _postService.AddPostAdvance(model);
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  label: Text("title"), fillColor: Colors.red, filled: true),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("body"), fillColor: Colors.red, filled: true),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("userId"), fillColor: Colors.red, filled: true),
              ),
            ),
            ElevatedButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleControler.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                              body: _bodyController.text,
                              title: _titleControler.text,
                              userId: int.tryParse(_userIdController.text));
                          AddPostAdvance(model);
                        }
                      },
                child: Text("Kaydet"))
          ],
        ),
      ),
    );
  }
}
