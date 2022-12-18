import 'package:flutter/material.dart';

class MyExploreScreenPage extends StatefulWidget {
  const MyExploreScreenPage({Key? key}) : super(key: key);

  final int currentTab;

  @override
  State<MyExploreScreenPage> createState() => _MyExploreScreenPageState();
}

class _MyExploreScreenPageState extends State<MyExploreScreenPage> {
  List pages = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              _rame(),
              _vgfgfghf(),
            ],
          ),
        ),
      ),
    );
  }

  Widget rame() {
    return const Center(
      child: Text('NEW ARRIVAL'),
    );
  }

  Widget vgfgfghf() {
    return Container();
  }
}
