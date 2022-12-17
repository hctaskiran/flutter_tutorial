import 'package:flutter/material.dart';
import 'package:flutter_tutorial/demos/color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({super.key, this.initialColor});
  final Color? initialColor;
  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color _backgroundColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed:_changeBackground, icon: const Icon(Icons.clear))
      ],),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorDemos(initialColor: _backgroundColor))
        ],
      ),
    );
  }

  void _changeBackground() {
        setState(() {
          _backgroundColor = Colors.pink;
        });
      }
}