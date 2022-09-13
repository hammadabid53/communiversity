import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/constant.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_getx_template/app/core/widget/asset_image_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets_path.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/values/app_colors.dart';
import '../../../../core/values/app_values.dart';
import '../../../../core/values/text_styles.dart';

class UpcomingListview extends StatelessWidget {
  const UpcomingListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 0.50.sw,
            margin: EdgeInsets.only(
                top: AppValues.kDefaultPadding,
                right: AppValues.kDefaultPadding),
            decoration: BoxDecoration(
                color: AppColors.whiteshade,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(AppValues.radius_12)),
            child: Column(
              children: [
                Expanded(
                    child: Stack(children: [
                  Container(
                    width: 1.sw,
                    decoration: BoxDecoration(
                        color: AppColors.textColorWhite,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AssetPaths.HOME_IMAGE,
                            )),
                        borderRadius:
                            BorderRadius.circular(AppValues.radius_12)),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      // margin: EdgeInsets.only(left: 0.50.sw),
                      height: 40.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: AppColors.colorPrimary,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(AppValues.radius_12))),

                      child: Center(
                        child: CustomTextWidget(
                          textAlign: TextAlign.center,
                          style: StyleForText.whiteText16,
                          text: AppStrings.DATE_TEXT,
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 0.05.sh,
                        width: 1.sw,
                        color: AppColors.textColorWhite,
                        child: Center(
                          child: CustomTextWidget(
                            style: StyleForText.boldTitlePrimaryColorStyle,
                            text: AppStrings.SHORT_LOREM_TEXT,
                          ),
                        ),
                      ))
                ])),
              ],
            ),
          );
        });
  }
}
