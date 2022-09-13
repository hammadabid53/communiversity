import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/constant.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_textfield_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_assets_path.dart';
import '../../utils/app_strings.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: AppValues.smallMargin, right: AppValues.smallMargin),
      margin: const EdgeInsets.only(
          left: AppValues.smallMargin, right: AppValues.smallMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: TextFieldContainer(
            suffixiconWidget: Image.asset(
              AssetPaths.SEARCH_ICON,
              scale: 2.sp,
            ),
            textfieldcolor: AppColors.textColorWhite,
            obsecureText: false,
            suffixiconscalesize: 2.sp,
            hinttext: AppStrings.SEARCH_TEXT,
          )),
        ],
      ),
    ).addNeumorphism(
      blurRadius: 0.05,
      spreadradius: 0.05,
      offset: Offset(0, 0),
      bottomShadowColor: AppColors.colorDark.withOpacity(0.02),
    );
  }
}
