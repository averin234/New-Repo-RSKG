import 'package:get/get.dart';

import '../controllers/info_pluitcare_controller.dart';

class InforskgcareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InforskgcareController>(
      () => InforskgcareController(),
    );
  }
}
