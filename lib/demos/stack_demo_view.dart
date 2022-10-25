import 'package:flutter/material.dart';
import 'package:flutter_tutorial/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});
  final _cardHeight = 50.0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
      children: [
        Expanded(flex: 4, child: Stack(
          alignment: Alignment.center,
          children: [
            const Positioned.fill(child: RandomImage(), bottom: 25),
          Positioned(
              height: 50, 
              bottom: 0, 
              width: 200,
              child: _cardCustom())
          ],
        )),
        const Spacer(flex: 6,)
      ],
    ));
  }

  Card _cardCustom() {
    return Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(),
            );
  }
}