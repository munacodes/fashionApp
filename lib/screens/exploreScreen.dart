import 'package:flutter/material.dart';

class MyExploreScreenPage extends StatefulWidget {
  const MyExploreScreenPage({Key? key}) : super(key: key);

  @override
  State<MyExploreScreenPage> createState() => _MyExploreScreenPageState();
}

class _MyExploreScreenPageState extends State<MyExploreScreenPage> {
  final List entries = ['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('NEW ARRIVAL')),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Apparel'),
                Tab(text: 'Dress'),
                Tab(text: 'TShirt'),
                Tab(text: 'Bag'),
              ],
            ),
          ),
          body: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                child: Row(children: [
                  Image(image: AssetImage('assets/images/img.png')),
                  Image(image: AssetImage('assets/images/img.png')),
                ]),
              );
            },
          ),
        ),
      ),
    );
  }
}
