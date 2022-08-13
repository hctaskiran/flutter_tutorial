import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(color: ColorsItems.porsche, child: Text("data", style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).errorColor))),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color porsche = Color(0xffEDBF61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}