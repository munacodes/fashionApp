import 'package:fashion_app/screens/screensExports.dart';
import 'package:fashion_app/widgets/widgetsExports.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/utils/fashionTheme.dart';
import 'package:fashion_app/utils/colors.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/utilsExports.dart';

class StartScreensPage extends StatefulWidget {
  const StartScreensPage({Key? key}) : super(key: key);

  @override
  State<StartScreensPage> createState() => _StartScreensPageState();
}

class _StartScreensPageState extends State<StartScreensPage> {
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
          child: Expanded(
            child: SizedBox(
              height: double.infinity,
              child: Stack(
                children: [
                  _page(),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return Expanded(
      child: SizedBox(
        child: Row(
          children: [
            Stack(
              children: [
                _buildButtons(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          PrimaryButton(
            title: "Register",
            onPressed: () => AppCustomMethods.navigateCloseAll(
                const RegisterScreen(), context),
          ),
          const SizedBox(height: 20.0),
          PrimaryButton(
            title: "Login",
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginScreenPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _page() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            mainPart(),
            const SizedBox(height: 20.0),
            _buildIndicators(),
          ],
        ),
      ),
    );
  }

  Widget mainPart() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: PageView(
          controller: controller,
          onPageChanged: (page) {},
          children: [
            _buildPageData(
              title: "",
              body: '',
              imagePath: '',
            ),
            _buildPageData(
              title: "",
              imagePath: '',
              body: '',
            ),
            _buildPageData(
              title: "",
              body: '',
              imagePath: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageData({
    required String imagePath,
    required String title,
    required String body,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(imagePath),
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
}
