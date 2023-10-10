import 'package:get/get.dart';

import '../controllers/profile_pasien_controller.dart';

class ProfilePasienBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePasienController>(
      () => ProfilePasienController(),
    );
  }
}
