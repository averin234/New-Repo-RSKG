import 'package:get/get.dart';

import '../controllers/detail_antrian_hemo_controller.dart';

class DetailAntrianHemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailAntrianHemoController>(
      () => DetailAntrianHemoController(),
    );
  }
}
