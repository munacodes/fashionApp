import 'package:fashion_app/screens/startScreens.dart';
import 'package:flutter/material.dart';
import 'utils/fashionTheme.dart';
import 'utils/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Fashion'),
        ),
        body: const StartScreensPage(),
      ),
    );
  }
}
