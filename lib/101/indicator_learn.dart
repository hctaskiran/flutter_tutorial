import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const[CenterCircularRedProgress()]),
      body: LinearProgressIndicator(
        
      ),
    );
  }
}

class CenterCircularRedProgress extends StatelessWidget {
  const CenterCircularRedProgress({
    Key? key,
  }) : super(key: key);
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(
      color: redColor,
      strokeWidth: 10,
      value: 0.9,
      backgroundColor: whiteColor,
    ));
  }
}