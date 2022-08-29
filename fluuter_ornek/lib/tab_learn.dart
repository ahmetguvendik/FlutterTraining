import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double notchMargin = 10;

  @override
  void initState() {
    // TODO: implement initState
    _tabController =
        TabController(length: _MyTabView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabView.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabView.home.index);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: notchMargin,
            shape: CircularNotchedRectangle(),
            child: _myTab(),
          ),
          appBar: AppBar(
            bottom: _tabBarView(),
          ),
          body: _MyTabPage(tabController: _tabController),
        ));
  }

  TabBar _myTab() {
    return TabBar(
        controller: _tabController,
        tabs: _MyTabView.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBar _tabBarView() {
    return TabBar(
        unselectedLabelColor: Colors.blue,
        //seçili olmayanın rengini değiştirmek için
        indicatorColor: Colors.white,
        controller: _tabController,
        tabs: _MyTabView.values.map((e) => Tab(text: e.name)).toList());
  }
}

class _MyTabPage extends StatelessWidget {
  const _MyTabPage({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: NeverScrollableScrollPhysics(),
        //sağa sola kaydırma ile kapatmak için
        controller: _tabController,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.yellow,
          )
        ]);
  }
}

enum _MyTabView { home, profile, settings, favorite }
