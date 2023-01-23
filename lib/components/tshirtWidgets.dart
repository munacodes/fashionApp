import 'package:fashion_app/models/fashion_tabs/fashion_tabs_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholder_images/placeholder_images.dart';

class TshirtTabbarWidgets extends StatefulWidget {
  const TshirtTabbarWidgets({Key? key}) : super(key: key);

  @override
  State<TshirtTabbarWidgets> createState() => _TshirtTabbarWidgetsState();
}

class _TshirtTabbarWidgetsState extends State<TshirtTabbarWidgets> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tshirt'),
    );
  }
}
