import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/Resuable_widgets/custom_text_widget.dart';
import '../values/app_colors.dart';

class CustomHeader extends StatelessWidget {
  final String text;

  const CustomHeader({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppValues.kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            // color: AppColors.disabledButtonBgColor,
            // width: 0.30.sw,
            height: 0.05.sh,
            child: Image.asset(
              AssetPaths.BACK_ICON,
              color: AppColors.blackColor,
              scale: 2.5.sp,
            ),
          ),
          SizedBox(
            width: 0.10.sh,
          ),
          SizedBox(
            width: 0.50.sw,
            // color: AppColors.errorColor,
            child: CustomTextWidget(
              text: text,
              textColor: AppColors.blackColor,
              fontSize: 1.5.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
