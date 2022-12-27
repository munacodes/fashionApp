import 'package:fashion_app/screens/profileScreen.dart';
import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/utils/fashionTheme.dart';
import 'package:fashion_app/utils/methods.dart';

class MyHomePageScreen extends StatefulWidget {
  const MyHomePageScreen({Key? key}) : super(key: key);

  @override
  State<MyHomePageScreen> createState() => _MyHomePageScreenState();
}

class _MyHomePageScreenState extends State<MyHomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(color: Colors.red),
        ),
      ),
    );
  }
}
