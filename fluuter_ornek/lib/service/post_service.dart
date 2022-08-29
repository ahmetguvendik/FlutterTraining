import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fluuter_ornek/service/comment_model.dart';
import 'package:fluuter_ornek/service/post_model.dart';

abstract class IPostService {
  Future<List<PostModel>?> postItemsAdvance();

  Future<bool> AddPostAdvance(PostModel model);

  Future<bool> putItemToService(PostModel model, int id);

  Future<bool> deleteItem(int id);

  Future<List<CommentModel>?> CommentPostWithId(int postId);
}

class PostService implements IPostService {
  final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<List<PostModel>?> postItemsAdvance() async {
    try {
      final response = await _dio.get(_PostServicePath.posts.name);

      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> AddPostAdvance(PostModel model) async {
    try {
      final response =
          await _dio.post(_PostServicePath.posts.name, data: model);
      return response.statusCode == HttpStatus.created;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> putItemToService(PostModel model, int id) async {
    try {
      final response =
          await _dio.put("${_PostServicePath.posts.name}/$id", data: model);
      return response.statusCode == HttpStatus.ok;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> deleteItem(int id) async {
    try {
      final response = await _dio.delete("${_PostServicePath.posts.name}/$id");
      return response.statusCode == HttpStatus.ok;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<List<CommentModel>?> CommentPostWithId(int postId) async {
    try {
      final response = await _dio.get(_PostServicePath.comments.name,
          queryParameters: {_PostQueryPaths.postId.name: postId});
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exeption) {
      _ShowDebug.showDioError(exeption, this);
    }
  }
}

enum _PostServicePath { posts, comments }

enum _PostQueryPaths { postId }

class _ShowDebug {
  static void showDioError<T>(DioError error, T typle) {
    if (kDebugMode) {
      print(error.message);
      print(typle.toString());
    }
  }
}
