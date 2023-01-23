import 'package:fashion_app/models/fashion_tabs/fashion_tabs_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholder_images/placeholder_images.dart';

class BagTabbarWidgets extends StatefulWidget {
  const BagTabbarWidgets({Key? key}) : super(key: key);

  @override
  State<BagTabbarWidgets> createState() => _BagTabbarWidgetsState();
}

class _BagTabbarWidgetsState extends State<BagTabbarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Bag'),
    );
  }
}
