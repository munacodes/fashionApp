import 'package:fashion_app/screens/exploreScreen.dart';
import 'package:fashion_app/screens/loginScreen.dart';
import 'package:fashion_app/screens/startScreens.dart';

import 'package:flutter/material.dart';
import 'screens/homePageScreen.dart';
import 'screens/startScreens.dart';

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
    return const SafeArea(
      child: Scaffold(
        body: StartScreens(),
      ),
    );
  }
}
