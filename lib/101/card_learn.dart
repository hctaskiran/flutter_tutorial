import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: const SizedBox(height: 100, width: 300, child: Center(child: Text("Ali"))),
            margin: ProjectMargins.cardMargin,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          Card(
            margin: ProjectMargins.cardMargin,
            child: const SizedBox(height: 100, width: 300, child: Center(child: Text("ali"))),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          _CustomCard(child: SizedBox(height: 100, width: 300, child: Center(child: Text("ali"))))
        ],
      )
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget{
  
  final Widget child;

  const _CustomCard({super.key, required this.child});

  @override
  Widget build (BuildContext context) {
     return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      );
  }
}