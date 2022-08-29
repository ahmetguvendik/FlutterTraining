import 'package:flutter/material.dart';
import 'package:fluuter_ornek/service/post_service.dart';

import 'comment_model.dart';

class CommentLearnView extends StatefulWidget {
  const CommentLearnView({Key? key, required this.postId}) : super(key: key);
  final int? postId;

  @override
  State<CommentLearnView> createState() => _CommentLearnViewState();
}

class _CommentLearnViewState extends State<CommentLearnView> {
  late final IPostService _postService;
  bool _isLoading = false;
  List<CommentModel>? _items;

  @override
  void initState() {
    super.initState();
    _postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }

  void changeLoading() {
    _isLoading = !_isLoading;
  }

  Future<void> fetchItemsWithId(int postId) async{
    changeLoading();
    _items = await _postService.CommentPostWithId(postId);
    changeLoading();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator() : SizedBox()
        ],
      ),
      body: _items ==null ? Placeholder() : ListView.builder(
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(_items?[index].email ?? ''),
              )
            );
          }),
    );
  }
}
