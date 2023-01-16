import 'package:fashion_app/components/componentsExports.dart';
import 'package:fashion_app/screens/exploreScreen.dart';
import 'package:fashion_app/screens/loginScreen.dart';
import 'package:fashion_app/screens/startScreens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

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
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const HomePageScreen();
            } else {
              return const LoginScreenPage();
            }
          },
        ),
      ),
    );
  }
}
