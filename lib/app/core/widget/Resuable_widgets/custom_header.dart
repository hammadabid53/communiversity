import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_widget.dart';

class CustomHeaderApp extends StatelessWidget {
  final void Function()? onTap;
  final String? title;
  final bool iconvisibility;
  final bool titlevisibility;

  CustomHeaderApp(
      {this.titlevisibility = true,
      this.iconvisibility = true,
      this.title,
      this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.kDefaultPadding),
      child: Row(
        children: [
          iconvisibility
              ? Expanded(
                  flex: 1,
                  child: GestureDetector(
                      onTap: onTap,
                      child: Container(
                          alignment: Alignment.topLeft,
                          // color: Colors.blue,
                          margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                          child: Image.asset(
                            AssetPaths.BACK_ICON,
                            scale: 2.5.sp,
                            color: AppColors.colorDark,
                          ))))
              : Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: 25.w,
                    height: 25.h,
                  ),
                ),
          Visibility(
            visible: titlevisibility,
            child: Expanded(
              flex: 5,
              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10.h, bottom: 10.h, right: 50.w),
                  height: 40.h,
                  child: Center(
                    child: CustomTextWidget(
                      style: StyleForText.appBarActionTextStyle,
                      text: title,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
