import 'package:get/get.dart';
import 'package:nike_application/controllers/navigation_controller.dart';

import '../../home/home.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    // Get.lazyPut<EventController>(() => EventController(), fenix: true);
    // Get.lazyPut<PaymentController>(() => PaymentController(), fenix: true);
    // Get.lazyPut<OtherController>(() => OtherController(), fenix: true);
    // Get.lazyPut<TaskController>(() => TaskController(), fenix: true);
  }
}
