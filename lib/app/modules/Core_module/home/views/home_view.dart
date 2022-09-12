import 'package:flutter/material.dart';

import '../controllers/home_controller.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/core/widget/paging_view.dart';

class HomeView extends BaseView<HomeController> {
  HomeView() {
    // controller.getGithubGetxProjectList();
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'GetX Templates on GitHub',
      isBackButtonEnabled: true,
    );
  }

  @override
  Widget body(BuildContext context) {
    return PagingView(
        onRefresh: () async {
          // controller.onRefreshPage();
        },
        onLoadNextPage: () {
          // controller.onLoadNextPage();
        },
        child: Padding(
            padding: const EdgeInsets.all(AppValues.padding),
            child: Container()));
  }
}
