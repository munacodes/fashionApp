import 'package:flutter/material.dart';

class MyLoginScreenPage extends StatefulWidget {
  const MyLoginScreenPage({Key? key}) : super(key: key);

  @override
  State<MyLoginScreenPage> createState() => _MyLoginScreenPageState();
}

class _MyLoginScreenPageState extends State<MyLoginScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Stack(
              children: const [
                Positioned(
                  child: Text('BELLEMODA'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
