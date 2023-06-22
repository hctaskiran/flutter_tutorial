import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
    child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed:() {}),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(tabs: [
          Tab(text: "Page 1"),
          Tab(text: "Page 2")
        ]),
      ),
      appBar: AppBar(
        bottom: TabBar(tabs: [
          Tab(text: "Page 1"),
          Tab(text: "Page 2")
        ]),
      ),
      
      body: TabBarView(children: [
        Container(color: Colors.red,),
        Container(color: Colors.green),
      ])
    ));
  }
}