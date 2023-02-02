import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
              ),
              const SizedBox(
                height: 8.11,
              ),
              Text(
                'Cart',
                style: GoogleFonts.tenorSans(
                  fontSize: 18.26,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4.06,
                  color: const Color(0xFF333333),
                ),
              ),
              const SizedBox(
                height: 4.52,
              ),
              Container(
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/Rectangle 344.png'),
                    ),
                    const SizedBox(
                      width: 10.81,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lamerei',
                          style: GoogleFonts.tenorSans(
                            fontSize: 14.2,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2.03,
                            color: const Color(0xFF000000),
                          ),
                        ),
                        const SizedBox(
                          height: 6.09,
                        ),
                        Text(
                          'Recycle Bouncle Kint Cardigan Pink',
                          style: GoogleFonts.tenorSans(
                            fontSize: 12.17,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF555555),
                          ),
                        ),
                        const SizedBox(
                          height: 12.17,
                        ),
                        Row(
                          children: const [
                            Text(
                              '-',
                              style: TextStyle(
                                color: Color(0xFF555555),
                              ),
                            ),
                            SizedBox(
                              width: 16.24,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xFF555555),
                              ),
                            ),
                            SizedBox(
                              width: 16.24,
                            ),
                            Text(
                              '+',
                              style: TextStyle(
                                color: Color(0xFF555555),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12.17,
                        ),
                        Text(
                          '${120}',
                          style: GoogleFonts.tenorSans(
                            fontSize: 15.21,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFDD8560),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.23,
              ),
              Container(
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/Frame 18.png'),
                    ),
                    const SizedBox(
                      width: 10.81,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5252 by oloi',
                          style: GoogleFonts.tenorSans(
                            fontSize: 14.2,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2.03,
                            color: const Color(0xFF000000),
                          ),
                        ),
                        const SizedBox(
                          height: 6.09,
                        ),
                        Text(
                          '2021 Signature Sweatshirt [NAVY]',
                          style: GoogleFonts.tenorSans(
                            fontSize: 12.17,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF555555),
                          ),
                        ),
                        const SizedBox(
                          height: 12.17,
                        ),
                        Row(
                          children: const [
                            Text(
                              '-',
                              style: TextStyle(
                                color: Color(0xFF555555),
                              ),
                            ),
                            SizedBox(
                              width: 16.24,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xFF555555),
                              ),
                            ),
                            SizedBox(
                              width: 16.24,
                            ),
                            Text(
                              '+',
                              style: TextStyle(
                                color: Color(0xFF555555),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12.17,
                        ),
                        Text(
                          '${120}',
                          style: GoogleFonts.tenorSans(
                            fontSize: 15.21,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFDD8560),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
