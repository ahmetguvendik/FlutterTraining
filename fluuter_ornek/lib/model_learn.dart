class PostModel7 {
  int userId;
  int id;
  String title;
  String body;

  PostModel7(
      {required this.title,
      required this.body,
      required this.id,
      required this.userId});
}

class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostModel1(this.body, this.id, this.userId, this.title);

  void updateBody(String? value) {
    if (value != null && value.isNotEmpty) {
      value = body;
    }
  }
}

class PostModel2 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel2(this.title, this.body, this.id, this.userId);
}

class PostModel3 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel3(
      {required String title,
      required String body,
      required int id,
      required int userId})
      : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}
