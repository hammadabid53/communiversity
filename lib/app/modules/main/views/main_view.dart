import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../Core_module/Events/views/Events_view.dart';
import '../../Core_module/Game/views/favorite_view.dart';
import '../../Core_module/Profile/views/profile_view.dart';
import '/app/core/base/base_view.dart';

import '../../Core_module/home/views/home_view.dart';
import '/app/modules/main/controllers/main_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/main/views/bottom_nav_bar.dart';

// ignore: must_be_immutable
class MainView extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
        key: UniqueKey(),
        child: Obx(
          () => getPageOnSelectedMenu(controller.selectedMenuCode),
        ));
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(onNewMenuSelected: controller.onMenuSelected);
  }

  HomeView? homeView;
  GameView? favoriteView;
  EventsView? settingsView;
  ProfileView? profileView;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.Home:
        return homeView ??= HomeView();
      case MenuCode.Game:
        favoriteView ??= GameView();
        return favoriteView!;
      case MenuCode.Events:
        settingsView ??= EventsView();
        return settingsView!;
      case MenuCode.Profile:
        profileView ??= ProfileView();
        return settingsView!;
      default:
        return ProfileView(
          viewParam: describeEnum(menuCode),
        );
    }
  }
}
