import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

Reference get firebaseStorage => FirebaseStorage.instance.ref();

class FirebaseStorageService extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }

    try {
      var urlRef = firebaseStorage
          .child('fashion_images')
          .child('${imgName.toLowerCase()}.png');
      var imgurl = await urlRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}
