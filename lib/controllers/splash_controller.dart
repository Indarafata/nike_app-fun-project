import 'package:get/get.dart';

import '../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    checkToken();
    super.onInit();
  }

  Future<void> checkToken() async {
    await Future.delayed(
      const Duration(seconds: 3),
      () {},
    );

    Get.offAllNamed(RouteName.onboard);
    // Storage.hasData('token')
    //     ? Get.offAllNamed(RouteName.navigation)
    //     : Get.offAllNamed(RouteName.landing);
  }
}
