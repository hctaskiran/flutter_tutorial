import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold Sample"),),
      body: const Text("Merhaba"),
      backgroundColor: Colors.grey,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => Container(height: 200,));
        }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "a" ),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "b" ),
        ]),
      ),
    );
  }
}