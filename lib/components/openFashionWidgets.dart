import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenFashionWidgets extends StatefulWidget {
  const OpenFashionWidgets({Key? key}) : super(key: key);

  @override
  State<OpenFashionWidgets> createState() => _OpenFashionWidgetsState();
}

class _OpenFashionWidgetsState extends State<OpenFashionWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          const SizedBox(
            height: 47,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BELLE MODA',
                style: GoogleFonts.tenorSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF000000),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'making a luxury lifestyle accessable',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF555555),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'for a generous group of women of our',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF555555),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'daily drive',
                style: GoogleFonts.tenorSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF555555),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Fast shipping free on',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'order over ${25}',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Substainable process',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'from start to finish',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Substainable process',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'from start to finish',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Fast Shipping',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Free on orders over ${25}',
                          style: GoogleFonts.tenorSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555555),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
