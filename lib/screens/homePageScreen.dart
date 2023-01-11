import 'package:fashion_app/screens/screensExports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String? searchValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/image 10.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 400,
                  height: 500,
                  child: Column(
                    children: [
                      _buildTextWidget(),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: SizedBox(
                  width: 400,
                  height: 50,
                  child: Column(
                    children: [
                      _searchBar(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextWidget() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                'Luxury',
                style: GoogleFonts.poppins(
                  fontSize: 38.66,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFF333333),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Fashion',
                style: GoogleFonts.poppins(
                  fontSize: 38.66,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFF333333),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                '& Accessories',
                style: GoogleFonts.poppins(
                  fontSize: 38.66,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFF333333),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Row(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xFF555555),
            ),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CollectionPage(),
              ),
            );
          },
          child: const Text(
            'Explore Colloection',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
