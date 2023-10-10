import 'package:get/get.dart';

import '../controllers/informasi_apps_controller.dart';

class InformasiAppsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InformasiAppsController>(
      () => InformasiAppsController(),
    );
  }
}
