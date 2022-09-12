import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/splashscreen/view/Splashview.dart';
import '/app/core/base/base_view.dart';
import '../../Game/views/favorite_view.dart';
import '../../Core_module/home/views/home_view.dart';
import '/app/modules/main/controllers/main_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/main/views/bottom_nav_bar.dart';
import '../../Profile/views/profile_view.dart';
import '../../Events/views/Events_view.dart';

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
      child: getPageOnSelectedMenu(controller.selectedMenuCode),
    );
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(onNewMenuSelected: controller.onMenuSelected);
  }

  final HomeView homeView = HomeView();
  GameView? favoriteView;
  EventsView? settingsView;
  SplashView? splashView;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.Home:
        return homeView;
      case MenuCode.Game:
        favoriteView ??= GameView();
        return favoriteView!;
      case MenuCode.Events:
        settingsView ??= EventsView();
        return settingsView!;
      case MenuCode.Profile:
        splashView ??= SplashView();
        return settingsView!;
      default:
        return OtherView(
          viewParam: describeEnum(menuCode),
        );
    }
  }
}
