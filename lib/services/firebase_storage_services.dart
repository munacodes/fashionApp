import 'package:get/get.dart';
import 'package:firebase_storage/firebase_storage.dart';

Reference get firebaseStorage => FirebaseStorage.instance.ref();

class FirebaseStorageServiceAll extends GetxService {
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

class FirebaseStorageServiceDress extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }

    try {
      var urlRef = firebaseStorage
          .child('fashion_images_apparel')
          .child('${imgName.toLowerCase()}.png');
      var imgurl = await urlRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}

class FirebaseStorageServiceTshirt extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }

    try {
      var urlRef = firebaseStorage
          .child('fashion_images_dress')
          .child('${imgName.toLowerCase()}.png');
      var imgurl = await urlRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}

class FirebaseStorageServiceBag extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }

    try {
      var urlRef = firebaseStorage
          .child('fashion_images_tshirt')
          .child('${imgName.toLowerCase()}.png');
      var imgurl = await urlRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}

class FirebaseStorageServiceApparel extends GetxService {
  Future<String?> getImage(String? imgName) async {
    if (imgName == null) {
      return null;
    }

    try {
      var urlRef = firebaseStorage
          .child('fashion_images_bag')
          .child('${imgName.toLowerCase()}.png');
      var imgurl = await urlRef.getDownloadURL();
    } catch (e) {
      return null;
    }
  }
}
