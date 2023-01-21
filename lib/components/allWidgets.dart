import 'package:fashion_app/models/fashion_tabs/fashion_tabs_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:placeholder_images/placeholder_images.dart';

class AllTabbarWidgets extends StatefulWidget {
  const AllTabbarWidgets({Key? key}) : super(key: key);

  @override
  State<AllTabbarWidgets> createState() => _AllTabbarWidgetsState();
}

class _AllTabbarWidgetsState extends State<AllTabbarWidgets> {
  @override
  Widget build(BuildContext context) {
    FashionTabController _fashionTabController = Get.find();
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 16,
            ),
            child: GridView.builder(
              itemCount: _fashionTabController.allFashionImages.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ClipRRect(
                  child: FadeInImage(
                    image: NetworkImage(
                        _fashionTabController.allFashionImages[index]),
                    placeholder:
                        AssetImage('assets/images/Fashion App logo.png'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
