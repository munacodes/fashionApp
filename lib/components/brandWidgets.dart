import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandWidgets extends StatelessWidget {
  const BrandWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          thickness: 3,
          height: 50,
          color: Colors.grey,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Prada.png'),
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Burberry.png'),
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Boss.png'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Catier.png'),
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Gucci.png'),
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Tiffany & Co.png'),
            ),
          ],
        ),
        const Divider(
          thickness: 3,
          height: 50,
          color: Colors.grey,
        ),
      ],
    );
  }
}
