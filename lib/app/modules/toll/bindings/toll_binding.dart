import 'package:get/get.dart';

import '../controllers/toll_controller.dart';

class TollBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TollController>(
      () => TollController(),
    );
  }
}
