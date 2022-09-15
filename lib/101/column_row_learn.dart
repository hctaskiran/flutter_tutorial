import 'package:flutter/material.dart';
class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(child: Container(color: Colors.green)),
              Expanded(child: Container(color: Colors.yellow)),
              Expanded(child: Container(color: Colors.purple)),
            ],
         )),
          const Spacer(flex: 2),
          const Expanded(flex: 2, child: FlutterLogo()),
          const Expanded(flex: 2, child: FlutterLogo()),
        ],
      ),
    );
  }
}