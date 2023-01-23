import 'package:flutter/material.dart';
import 'package:fashion_app/components/componentsExports.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionWidgets extends StatefulWidget {
  const CollectionWidgets({Key? key}) : super(key: key);

  @override
  State<CollectionWidgets> createState() => _CollectionWidgetsState();
}

class _CollectionWidgetsState extends State<CollectionWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Collection',
                style: GoogleFonts.tenorSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF000000),
                  letterSpacing: 10,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16.0,
          ),
          const Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/Frame 2.png'),
          ),
          Container(
            margin: const EdgeInsets.all(50),
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image 9.png'),
            ),
          ),
        ],
      ),
    );
  }
}
