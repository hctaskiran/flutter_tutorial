import 'package:flutter/material.dart';

class StatelefulLearn extends StatefulWidget {
   StatelefulLearn({super.key});

  @override
  State<StatelefulLearn> createState() => _StatelefulLearnState();
}
  void setState(Null Function() param0) {
  }

  int _countValue = 0;

  int _counterCustom = 0;

  void incrementValue() {
    setState(() {
      _countValue = _countValue + 1;
    });
  }
  
  void deincrementValue() {
    setState(() {
      _countValue = _countValue - 1;
    });
  }

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue - 1;      
    }else {

    }

    setState(() {});
  }

class _StatelefulLearnState extends State<StatelefulLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline2)),
          Placeholder(),

          ElevatedButton(onPressed: () {

            setState() {
              ++_counterCustom;
            }
          }, child: Text("merhaba $_counterCustom"))
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
        onPressed: () {
          _updateCounter(true);
        },
        child: const Icon(Icons.add),
        );
  }

  Padding _deincrementButton() {
    return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: FloatingActionButton(
            onPressed: () {
              _updateCounter(false);
            },
            child: const Icon(Icons.remove)

            ),
          );
  }
}