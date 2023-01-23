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
            const SizedBox(
              width: 30.25,
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Prada.png'),
            ),
            const SizedBox(
              width: 50.0,
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Burberry.png'),
            ),
            const SizedBox(
              width: 39.0,
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Boss.png'),
            ),
            const SizedBox(
              width: 45.0,
            ),
          ],
        ),
        const SizedBox(
          height: 28.38,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              width: 27.0,
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Catier.png'),
            ),
            const SizedBox(
              width: 44.0,
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Gucci.png'),
            ),
            const SizedBox(
              width: 20.0,
            ),
            GestureDetector(
              onTap: () {
                // TODO: Add Url Link
              },
              child: Image.asset('assets/images/Tiffany & Co.png'),
            ),
            const SizedBox(
              width: 20.0,
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
