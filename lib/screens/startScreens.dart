import 'package:flutter/material.dart';
import 'package:fashion_app/utils/fashionTheme.dart';
import 'package:fashion_app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

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
              image: AssetImage('assets/images/img'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: const [
              Positioned(
                top: 20,
                width: 30,
                child: Text(
                  'BELLEMODA',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Positioned(
                width: 348.28,
                height: 78,
                child: Text('SPRING'),
              ),
              Positioned(
                width: 373,
                height: 78,
                left: 193.25,
                top: 110.34,
                child: Text('SU'),
              ),
              Positioned(
                width: 348.28,
                height: 39.06,
                left: 36.1,
                top: 220.61,
                child: Text('Woman / CAMPAIGN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
