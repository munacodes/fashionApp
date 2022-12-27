import 'package:fashion_app/screens/screensExports.dart';
import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/utils/fashionTheme.dart';
import 'package:fashion_app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utilsExports.dart';

class StartScreensPage extends StatefulWidget {
  const StartScreensPage({Key? key}) : super(key: key);

  @override
  State<StartScreensPage> createState() => _StartScreensPageState();
}

class _StartScreensPageState extends State<StartScreensPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/img.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [],
          ),
        ),
      ),
    );
  }
}
