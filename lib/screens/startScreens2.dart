import 'package:fashion_app/screens/screensExports.dart';
import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/utils/fashionTheme.dart';
import 'package:fashion_app/utils/colors.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/utilsExports.dart';

class StartScreens2 extends StatefulWidget {
  const StartScreens2({Key? key}) : super(key: key);

  @override
  State<StartScreens2> createState() => _StartScreens2State();
}

class _StartScreens2State extends State<StartScreens2> {
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
              _page(),
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
        mainPart(),
        _buildIndicators(),
        // _button(),
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
              title: "dsdfsdgdf",
              body: 'fdfdf',
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
        ),
        Text(
          body,
        ),
      ],
    );
  }

  Widget _buildIndicators() {
    return SmoothPageIndicator(
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
    );
  }

  Widget _button() {
    return Expanded(
      child: Container(
        child: _buildButtons(),
      ),
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(
            title: "Register",
            onPressed: () => AppCustomMethods.navigateCloseAll(
                const RegisterScreen(), context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(
            title: "Login",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginScreenPage(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
