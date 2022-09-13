import 'package:flutter/material.dart';

import '../controllers/favorite_controller.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/custom_app_bar.dart';

class GameView extends BaseView<GameController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Favorite',
    );
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'GameView is working',
        style: StyleForText.titleStyle,
      ),
    );
  }
}
