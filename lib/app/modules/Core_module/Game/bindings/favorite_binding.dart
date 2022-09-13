import 'package:get/get.dart';

import '../controllers/favorite_controller.dart';



class GameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameController>(
      () => GameController(),
    );
  }
}
