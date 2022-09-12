import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../values/app_colors.dart';

import 'custom_text_widget.dart';

class CustomBottom extends StatelessWidget {
  // final String title;
  void Function()? onclickTap;
  // bool? isenable = false;

  final String? title1;
  final String? title2;

  CustomBottom({this.title1, this.title2, this.onclickTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onclickTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextWidget(
              text: title1,
              fontSize: 1.2.sp,
              textColor: AppColors.appBarColor,
            ),
            CustomTextWidget(
              text: title2,
              fontSize: 1.2.sp,
              textDecoration: TextDecoration.underline,
              textColor: AppColors.errorColor,
              fontWeight: FontWeight.bold,
            ),
          ],
        ));
  }
}
