import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';

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

    return BottomNavigationBar(
      key: bottomNavKey,
      items: navItems
          .map(
            (BottomNavItem navItem) => const BottomNavigationBarItem(
                icon: Icon(Icons.safety_check)

                //  SvgPicture.asset(
                //   "images/${navItem.iconSvgName}",
                //   height: AppValues.iconDefaultSize,
                //   width: AppValues.iconDefaultSize,
                //   color:
                //       navItems.indexOf(navItem) == navController.selectedIndex
                //           ? selectedItemColor
                //           : unselectedItemColor,
                // ),
                // label: navItem.navTitle,
                // tooltip: ""

                ),
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
    );
  }

  List<BottomNavItem> _getNavItems() {
    return [
      const BottomNavItem(
        navTitle: '',
        iconSvgName: AssetPaths.HOME_ICON,
        menuCode: MenuCode.Home,
      ),
      const BottomNavItem(
          navTitle: "",
          iconSvgName: AssetPaths.GAME_SELECTED_ICON,
          menuCode: MenuCode.Game),
      const BottomNavItem(
          navTitle: "",
          iconSvgName: AssetPaths.EVENTS_UNSELECTED_ICON,
          menuCode: MenuCode.Events),
      const BottomNavItem(
          navTitle: "",
          iconSvgName: AssetPaths.PROFILE_UPLOAD_ICON,
          menuCode: MenuCode.Profile)
    ];
  }
}
