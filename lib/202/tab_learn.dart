import 'package:flutter/material.dart';
import 'package:flutter_tutorial/101/icon_learn.dart';
import 'package:flutter_tutorial/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin{

  final double _notchedValue = 10;

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length, child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {_tabController.animateTo(_MyTabViews.home.index);}),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          child: _CustomTabBar(),
        ),
        appBar: AppBar(
           
        ),
        body: _CustomTabBarView(),  
      ),
    );
  }

  TabBar _CustomTabBar() {
    return TabBar(
          // isScrollable: true,
          padding: EdgeInsets.zero,
          onTap:(int value) {},
          indicatorColor: Colors.white ,
          controller: _tabController,
          tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _CustomTabBarView() {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
         ImageLearn(), IconLearnView(), IconLearnView(), IconLearnView()
      ]);
  }
}

enum _MyTabViews {home,settings,profile,favorite}

extension _MyTabViewExtension on _MyTabViews {}