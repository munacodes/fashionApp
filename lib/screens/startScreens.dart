import 'package:fashion_app/screens/screensExports.dart';
import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/utils/utilsExports.dart';
import 'package:fashion_app/utils/colors.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/utilsExports.dart';

class StartScreens extends StatefulWidget {
  const StartScreens({Key? key}) : super(key: key);

  @override
  State<StartScreens> createState() => _StartScreensState();
}

class _StartScreensState extends State<StartScreens> {
  PageController controller = PageController();

  @override
  void initState() {
    initialization();
    super.initState();
  }

  void initialization() async {
    FlutterNativeSplash.remove();
  }

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
            children: [
              Container(
                child: _page(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _page() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'BELLEMODA',
              style: GoogleFonts.tenorSans(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 33.0,
        ),
        mainPart(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Woman/ CAMPAIGN',
              style: GoogleFonts.tenorSans(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
        _buildIndicators(),
        _button(),
      ],
    );
  }

  Widget mainPart() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: PageView(
          controller: controller,
          onPageChanged: (page) {},
          children: [
            _buildPageData(
              title: "SPRING",
              body: 'SU',
            ),
            _buildPageData(
              title: "asdasfg",
              body: 'dfsf',
            ),
            _buildPageData(
              title: "dfsdsd",
              body: 'sdsz',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageData({
    required String title,
    required String body,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: GoogleFonts.lato(
            fontSize: 88.69,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        Text(
          body,
          style: GoogleFonts.lato(
            fontSize: 88.69,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildIndicators() {
    return Expanded(
      child: SmoothPageIndicator(
        controller: controller, // PageController
        count: 3,
        effect: SlideEffect(
          spacing: 8.0,
          radius: 20.0,
          dotWidth: 16.0,
          dotHeight: 16.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
          activeDotColor: AppCustomColors.light[50]!,
        ),
      ),
    );
  }

  Widget _button() {
    return Container(
      child: _buildButtons(),
    );
  }

  Widget _buildButtons() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFF555555),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginScreenPage(),
                ),
              );
            },
            child: const Text(
              'LOGIN',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFF555555),
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RegisterScreen(),
                ),
              );
            },
            child: const Text(
              'REGISTER',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
