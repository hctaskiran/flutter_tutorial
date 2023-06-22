class PostModel {
  int? userID;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userID;
  int id;
  String title;
  String body;

  PostModel2(this.userID, this.id, this.title, this.body);
}

class PostModel3 {
  final int userID;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userID, this.id, this.title, this.body);
}

class PostModel4 {
  final int userID;
  final int id;
  final String title;
  final String body;

  PostModel4({required this.userID, required this.id, required this.title, required this.body});
}


