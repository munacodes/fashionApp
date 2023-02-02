import 'package:fashion_app/components/componentsExports.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WomenMenuTabBar extends StatefulWidget {
  const WomenMenuTabBar({Key? key}) : super(key: key);

  @override
  State<WomenMenuTabBar> createState() => _WomenMenuTabBarState();
}

class _WomenMenuTabBarState extends State<WomenMenuTabBar> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 19.77,
        ),
        Row(
          children: [
            Text(
              'New',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              width: 155,
            ),
            const NewMenuList(),
          ],
        ),
        Row(
          children: [
            Text(
              'Apparel',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              width: 130,
            ),
            const ApparelMenuList(),
          ],
        ),
        Row(
          children: [
            Text(
              'Bag',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              width: 160,
            ),
            const BagMenuList(),
          ],
        ),
        Row(
          children: [
            Text(
              'Shoes',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              width: 143,
            ),
            const ShoesMenuList(),
          ],
        ),
        Row(
          children: [
            Text(
              'Beauty',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              width: 136,
            ),
            const BeautyMenuList(),
          ],
        ),
        Row(
          children: [
            Text(
              'Accessories',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              width: 97,
            ),
            const AccessoriesMenuList(),
          ],
        ),
        const SizedBox(
          height: 26.65,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 18.32,
            ),
            const Icon(Icons.phone),
            const SizedBox(
              width: 16,
            ),
            Text(
              '[786] 713-8616',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF555555),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 21.11,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 18.32,
            ),
            const Icon(Icons.location_on),
            const SizedBox(
              width: 16,
            ),
            Text(
              'Store Locator',
              style: GoogleFonts.tenorSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF555555),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 60.69,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                // TODO: Add a link to fashion app facebook page
              },
              icon: const Icon(Icons.facebook_sharp),
            ),
            IconButton(
              onPressed: () {
                // TODO: Add a link to fashion app instagram page
              },
              icon: const Icon(Icons.insert_chart),
            ),
            IconButton(
              onPressed: () {
                // TODO: Add a link to fashion app youtube page
              },
              icon: const Icon(Icons.video_collection),
            ),
          ],
        ),
      ],
    );
  }
}
