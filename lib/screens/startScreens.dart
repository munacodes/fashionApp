import 'package:fashion_app/widgets/widgetsExports.dart';
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
              image: AssetImage('assets/images/img.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: const [
              Positioned(
                height: 50,
                left: 75,
                top: 7,
                child: Text(
                  'BELLEMODA',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Positioned(
                width: 380.28,
                height: 88,
                left: 43.25,
                top: 100.34,
                child: Text(
                  'SPRING',
                  style: TextStyle(
                    fontSize: 88.69,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Positioned(
                width: 373,
                height: 100,
                left: 243.25,
                top: 200.34,
                child: Text(
                  'SU',
                  style: TextStyle(
                    fontSize: 88.69,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              Positioned(
                width: 348.28,
                height: 39.06,
                left: 50.0,
                top: 300.61,
                child: Text(
                  'Woman / CAMPAIGN',
                  style: TextStyle(
                    fontSize: 30.34,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget loginButton(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          PrimaryButton(title: 'Login'),
          PrimaryButton(title: 'Register'),
        ],
      ),
    );
  }
}
