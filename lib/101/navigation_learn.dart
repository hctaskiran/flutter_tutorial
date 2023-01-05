import 'package:flutter/material.dart';
import 'package:flutter_tutorial/101/image_learn.dart';
import 'package:flutter_tutorial/101/navigation_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager{

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  List<int> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemBuilder:(context, index) {
        return TextButton(
          onPressed:() async {
            final response = await navigateToWidgetNormal<bool>(context, NavigationDetailLearn(
              isOkay: selectedItems.contains(index)
            ));
            if (response is bool) {
            addSelected(index, response);
          }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green : Colors.red
            ),
          ),
        );
      }
    ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        onPressed: () async{
          final response = await navigateToWidgetNormal<bool>(context, NavigationDetailLearn(),
          
          );
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
  Future<T?> navigateToWidgetNormal<T> (BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(builder: ((context) {
            return widget;
          }),
          fullscreenDialog: true, // native ios alttan yukarı kaydırarak açılan pop-up
          settings: const RouteSettings()
          ));
  }
  
}