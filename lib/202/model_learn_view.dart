import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/model_learn.dart';
class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {

  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = "hello";

    final user2 = PostModel2(1, 2, "a", "b");

    final user3 = PostModel3(1, 2, "a", "b");

    final user4 = PostModel4(userID: 1, id: 2, title: "a", body: "b");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("?"),
      ),
    );
  }
}