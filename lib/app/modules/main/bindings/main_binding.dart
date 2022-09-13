import 'package:flutter_getx_template/app/modules/Registration_module/login_screen/controller/login_controller.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/splashscreen/controller/splashcontroller.dart';
import 'package:get/get.dart';

import '../../Core_module/Events/controllers/Events_controller.dart';
import '../../Core_module/Game/controllers/favorite_controller.dart';

import '../../Core_module/Profile/controllers/profile_controller.dart';
import '../../Core_module/home/controllers/home_controller.dart';
import '/app/modules/main/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
      fenix: true,
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<GameController>(
      () => GameController(),
      fenix: true,
    );
    Get.lazyPut<EventsController>(
      () => EventsController(),
      fenix: true,
    );
    Get.lazyPut<SplashController>(
      () => SplashController(),
      fenix: true,
    );

    Get.lazyPut<LoginScreenController>(
      () => LoginScreenController(),
      fenix: true,
    );
  }
}
