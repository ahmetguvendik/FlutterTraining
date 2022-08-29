import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluuter_ornek/service/comment_learn_view.dart';
import 'package:fluuter_ornek/service/post_model.dart';
import 'package:fluuter_ornek/service/post_service.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({Key? key}) : super(key: key);

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  List<PostModel>? _items;
  bool isLoading = false;
  late final IPostService _postService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _postService = PostService();
    postItemsAdvance();
  }

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> postItemsAdvance() async {
    changeLoading();
    _items = await _postService.postItemsAdvance();
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          isLoading ? CircularProgressIndicator.adaptive() : SizedBox()
        ],
      ),
      body: _items == null
          ? Placeholder()
          : ListView.builder(
              itemCount: _items?.length ?? 0, //item yoksa 0 göster
              itemBuilder: (context, index) {
                return _MyCardWidget(
                  models: _items?[index],
                );
              },
            ),
    );
  }
}

class _MyCardWidget extends StatelessWidget {
  const _MyCardWidget({
    Key? key,
    required PostModel? models,
  })  : _models = models,
        super(key: key);

  final PostModel? _models;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommentLearnView(postId: _models?.id,)));
        },
        title: Text(_models?.title ?? ''),
        subtitle: Text(_models?.body ?? ''),
      ),
    );
  }
}
