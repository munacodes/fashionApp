import 'package:fashion_app/models/fashion_tabs/fashion_tabs_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholder_images/placeholder_images.dart';

class DressTabbarWidgets extends StatefulWidget {
  const DressTabbarWidgets({Key? key}) : super(key: key);

  @override
  State<DressTabbarWidgets> createState() => _DressTabbarWidgetsState();
}

class _DressTabbarWidgetsState extends State<DressTabbarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('dress'),
    );
  }
}
