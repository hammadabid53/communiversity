import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/utils/constant.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widget/Resuable_widgets/custom_search_field.dart';
import '../controllers/home_controller.dart';
import '../widget/upcoming_event_list.dart';
import '/app/core/base/base_view.dart';
import '/app/core/values/app_values.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/core/widget/paging_view.dart';

class HomeView extends RegisterView<HomeController> {
  // HomeView() {
  //   // controller.getGithubGetxProjectList();
  // }

  @override
  Widget body(BuildContext context) {
    return PagingView(
        onRefresh: () async {
          // controller.onRefreshPage();
        },
        onLoadNextPage: () {
          // controller.onLoadNextPage();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomAppBar(
                  appBarTitleText: AppStrings.HOME_TEXT,
                ),
                const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: AppValues.marginBelowVerticalLine),
                      child: SearchField(),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(AppValues.kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: AppValues.margin_10,
                  ),
                  CustomTextWidget(
                    style: StyleForText.bigTitleStyle,
                    text: AppStrings.HI_JOE_TEXT,
                  ),
                  const SizedBox(
                    height: AppValues.margin_10,
                  ),
                  CustomTextWidget(
                    style: StyleForText.boldTitleStyle,
                    text: AppStrings.CURRENT_EVENT_TEXT,
                  ),
                  const SizedBox(
                    height: AppValues.margin_10,
                  ),
                  Container(
                    // height: 300,
                    decoration: BoxDecoration(
                        color: AppColors.buttonBgColor,
                        borderRadius: BorderRadius.circular(
                            AppValues.roundedButtonRadius)),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              AssetPaths.HOME_IMAGE,
                              fit: BoxFit.cover,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 60.h,
                                width: 50.w,
                                decoration: BoxDecoration(
                                    color: AppColors.colorPrimary,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                            AppValues.radius_12))),
                                child: Center(
                                  child: CustomTextWidget(
                                    textAlign: TextAlign.center,
                                    style: StyleForText.whiteText22,
                                    text: AppStrings.DATE_TEXT,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              decoration: const BoxDecoration(
                                  color: AppColors.textColorWhite,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                          AppValues.roundedButtonRadius),
                                      bottomRight: Radius.circular(
                                          AppValues.roundedButtonRadius))),
                              padding: const EdgeInsets.only(
                                  top: AppValues.smallPadding,
                                  left: AppValues.smallPadding,
                                  right: AppValues.smallPadding,
                                  bottom: AppValues.smallPadding),
                              // height: 20.h,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomTextWidget(
                                    style:
                                        StyleForText.boldTitlePrimaryColorStyle,
                                    text: AppStrings.SHORT_LOREM_TEXT,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        AssetPaths.LOCATION_ICON,
                                        scale: 2.5.sp,
                                      ),
                                      const SizedBox(
                                        width: AppValues.margin_10,
                                      ),
                                      CustomTextWidget(
                                        style: StyleForText.titleStyle,
                                        text:
                                            AppStrings.CENTRAL_AUDITORIUM_TEXT,
                                      ),
                                      const SizedBox(
                                        width: AppValues.margin_10,
                                      ),
                                      Image.asset(
                                        AssetPaths.TIME_ICON,
                                        scale: 2.5.sp,
                                      ),
                                      const SizedBox(
                                        width: AppValues.margin_10,
                                      ),
                                      CustomTextWidget(
                                        style: StyleForText.titleStyle,
                                        text: AppStrings.TIME_TEXT,
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ).addNeumorphism(
                    blurRadius: 0.8,
                    spreadradius: 0.8,
                    offset: Offset(0, 1),
                    bottomShadowColor: AppColors.colorDark.withOpacity(0.05),
                  ),
                  const SizedBox(
                    height: AppValues.margin_10,
                  ),
                  CustomTextWidget(
                    style: StyleForText.boldTitleStyle,
                    text: AppStrings.UPCOMING_EVENT_TEXT,
                  ),
                  Container(height: 0.25.sh, child: const UpcomingListview())
                ],
              ),
            ),
          ],
        ));
  }
}
