import 'package:fashion_app/services/firebase_storage_services.dart';
import 'package:get/get.dart';

class FashionTabController extends GetxController {
  final allFashionImages = <String>[].obs;

  @override
  void onReady() {
    getAllFashionImages();
    super.onReady();
  }

  Future<void> getAllFashionImages() async {
    List<String> imgName = [
      'Rectangle 325'
          'Rectangle 325 (1)'
          'Rectangle 325 (2)'
          'Rectangle 325 (3)'
    ];
    try {
      for (var img in imgName) {
        final imgUrl = await Get.find<FirebaseStorageService>().getImage(img);
        allFashionImages.add(imgUrl!);
      }
    } catch (e) {
      print(e);
    }
  }
}
