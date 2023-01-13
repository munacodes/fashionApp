import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerWidgets extends StatelessWidget {
  const BannerWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LUXURY',
                  style: GoogleFonts.poppins(
                    fontSize: 38.66,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFF333333),
                  ),
                ),
                Text(
                  'FASHION',
                  style: GoogleFonts.poppins(
                    fontSize: 38.66,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFF333333),
                  ),
                ),
                Text(
                  '& ACCESSORIES',
                  style: GoogleFonts.poppins(
                    fontSize: 38.66,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFF333333),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(0xFFFCFCFC),
                      size: 30,
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
      ),
    );
  }
}
