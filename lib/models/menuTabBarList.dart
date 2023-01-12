import 'package:flutter/material.dart';
import 'package:fashion_app/screens/screensExports.dart';
import 'package:fashion_app/models/modelsExport.dart';

class MenuTabBarList extends StatefulWidget {
  const MenuTabBarList({Key? key}) : super(key: key);

  @override
  State<MenuTabBarList> createState() => _MenuTabBarListState();
}

class _MenuTabBarListState extends State<MenuTabBarList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TODO: Add tab wigets here
              _buildWomensTab(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWomensTab() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('New'),
          ],
        ),
        Row(
          children: [
            Text('Apparel'),
          ],
        ),
        Row(
          children: [
            Text('Bag'),
          ],
        ),
        Row(
          children: [
            Text('Shoes'),
          ],
        ),
      ],
    );
  }
}
