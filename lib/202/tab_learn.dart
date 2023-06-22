import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin{

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
    child: Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed:() {
        _tabController.animateTo(0);
      }),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: CircularNotchedRectangle(),
        child: TabBar(
          labelColor: Colors.pink.shade300,
          indicatorColor: Colors.white,
          // isScrollable: true,
          controller: _tabController,
          tabs: [
          Tab(text: "Page 1"),
          Tab(text: "Page 2"),
        ]),
      ),
      appBar: AppBar(),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
        Container(color: Colors.red,),
        Container(color: Colors.green),
      ])
    ));
  }
}