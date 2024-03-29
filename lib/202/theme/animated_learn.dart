import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin{
  bool _isVisible = false;
  bool _isOpacity = false;

  late AnimationController controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _PlaceholderWidget(),
      ),
      floatingActionButton: FloatingActionButton(onPressed:() {
        _changeVisible();
        controller.animateTo(1);
      }),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
              child: const Text('data'),
              duration: _DurationItems.durationLow,
              opacity: _isOpacity ? 1 : 0,
              ),
            trailing: IconButton(onPressed: () {
              _isOpacity;
            }, 
            icon: Icon(Icons.precision_manufacturing_rounded)),
          ),
          AnimatedDefaultTextStyle(child: const Text('data'), 
          style: const TextStyle(fontSize: 14), 
          duration: _DurationItems.durationLow),

          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),

          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height: MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            ),
        ],
      ),
    );
  }

  AnimatedCrossFade _PlaceholderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond
    );
  }
} 

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}