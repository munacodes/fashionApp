import 'Package:flutter/material.dart';
import 'package:fashion_app/components/componentsExports.dart';

class NewArrivalWidgets extends StatefulWidget {
  const NewArrivalWidgets({Key? key}) : super(key: key);

  @override
  State<NewArrivalWidgets> createState() => _NewArrivalWidgetsState();
}

class _NewArrivalWidgetsState extends State<NewArrivalWidgets> {
  final List myTabs = [
    const Tab(text: 'All'),
    const Tab(text: 'Apparel'),
    const Tab(text: 'Dress'),
    const Tab(text: 'Tshirt'),
    const Tab(text: 'Bag'),
  ];
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Text('NEW ARRIVAL'),
      ],
    );
  }
}
