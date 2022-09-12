import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/controller/otp_controller.dart';
import 'package:get/get.dart';

class OtpScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(
      () => OtpController(),
    );
  }
}
