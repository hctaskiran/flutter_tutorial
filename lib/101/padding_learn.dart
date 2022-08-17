import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(color: Colors.white, height: 100,)),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly + ProjectPadding.pagePaddingVertical,
              child: const Text("ali")),
          ],
        ),
      )
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);

  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}