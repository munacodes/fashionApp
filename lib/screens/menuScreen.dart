import 'package:flutter/material.dart';
import 'package:fashion_app/screens/screensExports.dart';
import 'package:fashion_app/models/modelsExport.dart';
import 'package:fashion_app/screens/homePageScreen.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Women',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(
                    text: 'Kids',
                  ),
                ],
              ),
              /*  TabBarView(
                children: [
                  _buildWomensTab()
                  _menTab(),
                  _kidsTab(),
                ],
              ), */
            ],
          ),
        ),
      ),
    );
  }
}
