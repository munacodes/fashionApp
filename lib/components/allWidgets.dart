import 'package:fashion_app/models/fashion_tabs/fashion_tabs_controller.dart';
import 'package:fashion_app/services/firebase_storage_services.dart';
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
    FashionTabController fashionTabController = Get.put(
      FashionTabController(),
    );
    Get.put(FirebaseStorageServiceAll());

    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
        ),
        child: GridView.builder(
          itemCount: fashionTabController.allFashionImages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return ClipRRect(
              child: SizedBox(
                height: 200,
                width: 200,
                child: FadeInImage(
                  image: NetworkImage(
                      fashionTabController.allFashionImages[index]),
                  placeholder:
                      const AssetImage('assets/images/Fashion App logo.png'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
