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
        SizedBox(
          height: double.infinity,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            labelStyle: GoogleFonts.lato(),
            unselectedLabelColor: Colors.grey,
            tabs: myTabs,
          ),
        ),
        const SizedBox(
          height: double.infinity,
        ),
        Flexible(
          child: TabBarView(
            controller: _tabController,
            physics: const BouncingScrollPhysics(),
            children: const [
              SingleChildScrollView(
                // TODO: update with all_Widgets.dart file
                child: Text('he'),
              ),
              SingleChildScrollView(
                child: Text('She'),
              ),
              SingleChildScrollView(
                child: Text('here'),
              ),
              SingleChildScrollView(
                child: Text('There'),
              ),
              SingleChildScrollView(
                child: Text('Where'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
