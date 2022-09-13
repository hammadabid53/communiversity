import '/app/modules/main/model/menu_code.dart';

class BottomNavItem {
  final String navTitle;
  final String iconImageName;
  final MenuCode menuCode;

  const BottomNavItem(
      {required this.navTitle,
      required this.iconImageName,
      required this.menuCode});
}
