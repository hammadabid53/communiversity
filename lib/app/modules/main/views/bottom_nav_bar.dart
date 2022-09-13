import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/values/app_values.dart';
import '/app/core/values/app_colors.dart';
import '/app/modules/main/controllers/bottom_nav_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/main/model/menu_item.dart';

class BottomNavBar extends StatelessWidget {
  final Function(MenuCode menuCode) onNewMenuSelected;

  BottomNavBar({Key? key, required this.onNewMenuSelected}) : super(key: key);

  final navController = BottomNavController();

  final Key bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Color selectedItemColor = Colors.white;
    Color unselectedItemColor = Colors.grey;
    List<BottomNavItem> navItems = _getNavItems();

    return Obx(() => BottomNavigationBar(
          key: bottomNavKey,
          items: navItems
              .map(
                (BottomNavItem navItem) => BottomNavigationBarItem(
                    icon: AssetImageView(
                      fileName: navItem.iconImageName,
                      height: AppValues.iconDefaultSize,
                      width: AppValues.iconDefaultSize,
                      color: navItems.indexOf(navItem) ==
                              navController.selectedIndex
                          ? selectedItemColor
                          : unselectedItemColor,
                    ),
                    label: navItem.navTitle,
                    tooltip: ""),
              )
              .toList(),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.colorAccent,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          currentIndex: navController.selectedIndex,
          onTap: (index) {
            navController.updateSelectedIndex(index);
            onNewMenuSelected(navItems[index].menuCode);
          },
        ));
  }

  List<BottomNavItem> _getNavItems() {
    return [
      const BottomNavItem(
        navTitle: AppStrings.HOME_TEXT,
        iconImageName: AssetPaths.HOME_ICON,
        menuCode: MenuCode.Home,
      ),
      const BottomNavItem(
          navTitle: AppStrings.GAME_TEXT,
          iconImageName: AssetPaths.GAME_SELECTED_ICON,
          menuCode: MenuCode.Game),
      const BottomNavItem(
          navTitle: AppStrings.EVENTS_TEXT,
          iconImageName: AssetPaths.EVENTS_UNSELECTED_ICON,
          menuCode: MenuCode.Events),
      const BottomNavItem(
          navTitle: AppStrings.PROFILE_TEXT,
          iconImageName: AssetPaths.PROFILE_UPLOAD_ICON,
          menuCode: MenuCode.Profile)
    ];
  }
}
