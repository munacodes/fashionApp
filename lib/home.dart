import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  final int currentTab;

  const MyHome({Key? key, required this.currentTab}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  static List<Widget> pages = [
    Container(color: Colors.orange),
    Container(color: Colors.blue),
    Container(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Fashion'),
        ),
        body: IndexedStack(index: widget.currentTab, children: pages),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          currentIndex: widget.currentTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Card 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cabin),
              label: 'Card 2',
            ),
          ],
        ),
      ),
    );
  }
}
