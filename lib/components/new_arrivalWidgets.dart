import 'Package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fashion_app/components/componentsExports.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArrivalWidgets extends StatefulWidget {
  const NewArrivalWidgets({Key? key}) : super(key: key);

  @override
  State<NewArrivalWidgets> createState() => _NewArrivalWidgetsState();
}

class _NewArrivalWidgetsState extends State<NewArrivalWidgets>
    with TickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'All'),
    Tab(text: 'Apparel'),
    Tab(text: 'Dress'),
    Tab(text: 'Tshirt'),
    Tab(text: 'Bag'),
  ];
  int tabCount = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          labelStyle: GoogleFonts.lato(),
          unselectedLabelColor: Colors.grey,
          tabs: myTabs,
        ),
        SizedBox(
          height: 600,
          child: TabBarView(
            controller: _tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              AllTabbarWidgets(),
              ApparelTabbarWidgets(),
              DressTabbarWidgets(),
              TshirtTabbarWidgets(),
              BagTabbarWidgets(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Explore More',
                      style: GoogleFonts.tenorSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF000000),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Icon(Icons.forward),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
