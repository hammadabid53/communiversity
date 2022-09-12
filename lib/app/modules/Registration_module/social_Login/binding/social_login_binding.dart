
import 'package:get/get.dart';

import '../controller/social_login_controller.dart';



class SocialLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SocialLoginController>(
      () =>SocialLoginController(),
    );
  }
}
