import 'package:flutter/material.dart';

import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends BaseView<ProfileController> {
  final String viewParam;

  ProfileView({this.viewParam = ""});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: viewParam);
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'OtherView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
