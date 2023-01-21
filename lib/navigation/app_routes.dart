import 'package:fashion_app/models/fashion_tabs/fashion_tabs_controller.dart';
import 'package:get/get.dart';
import 'package:fashion_app/screens/screensExports.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: "/startscreen",
          page: () => const StartScreens(),
        ),
        GetPage(
          name: "/home",
          page: () => const HomePageScreen(),
          binding: BindingsBuilder(
            () {
              Get.put(
                FashionTabController(),
              );
            },
          ),
        ),
      ];
}
