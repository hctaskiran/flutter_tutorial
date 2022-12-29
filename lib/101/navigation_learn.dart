import 'package:flutter/material.dart';
import 'package:flutter_tutorial/101/image_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemBuilder:(context, index) {
        return Placeholder(
          color: Colors.red
        );
      }
    ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        onPressed: () {
          navigateToWidget(context, ImageLearn());
        }
      ),

    );
  }
}




mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
            return widget;
          }),
          fullscreenDialog: true, // native ios alttan yukarı kaydırarak açılan pop-up
          settings: const RouteSettings()
          ));
  }
}