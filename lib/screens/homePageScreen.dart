import 'package:fashion_app/screens/menuScreen.dart';
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
                alignment: AlignmentDirectional.topCenter,
                child: SizedBox(
                  width: 400,
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'BELLEMODA',
                        style: GoogleFonts.tenorSans(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildAppbarIcons(),
              Align(
                alignment: AlignmentDirectional.center,
                child: SizedBox(
                  width: 400,
                  height: 300,
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
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CollectionPage(),
              ),
            );
          },
          child: SizedBox(
            width: 350,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search,
                    color: Color(0xFFFCFCFC),
                    size: 30.0,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Explore Collection',
                    style: GoogleFonts.tenorSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFCFCFC),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAppbarIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MenuScreen(),
              ),
            );
          },
          icon: const Icon(Icons.menu),
        ),
        const SizedBox(
          width: 230.0,
        ),
        const Icon(
          Icons.search,
          color: Color(0xFF14142B),
        ),
        const SizedBox(
          width: 16.0,
        ),
        const Icon(
          Icons.shopping_bag_outlined,
          color: Color(0xFF14142B),
        ),
      ],
    );
  }
}
