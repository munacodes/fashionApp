import 'package:fashion_app/components/componentsExports.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/screens/screensExports.dart';
import 'package:fashion_app/models/modelsExport.dart';
import 'package:fashion_app/screens/homePageScreen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Women'),
    Tab(text: 'Men'),
    Tab(text: 'Kids'),
  ];
  int tabCount = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          bottom: TabBar(
            controller: _tabController,
            tabs: myTabs,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBarView(
            controller: _tabController,
            children: const [
              WomenMenuTabBar(),
              Tab(text: 'Men'),
              Tab(text: 'Kids'),
            ],
          ),
        ),
      ),
    );
  }
}
