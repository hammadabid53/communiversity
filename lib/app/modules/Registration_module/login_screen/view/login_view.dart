import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';

import 'package:flutter_getx_template/app/core/utils/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_getx_template/app/core/utils/Resuable_widgets/custom_textfield_container.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/Resuable_widgets/custom_app_button.dart';
import '../../../../core/widget/custom_headers.dart';
import '../controller/login_controller.dart';

class LoginView extends RegisterView<LoginScreenController> {
  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              child: Image.asset(AssetPaths.LOGIN_SCREEN_IMAGE),
            ),
            const CustomHeader(
              text: AppStrings.LOGIN_TEXT,
            )
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppValues.kDefaultPadding),
              child: Column(
                children: [
                  TextFieldContainer(
                    labeltextcolor: AppColors.colorPrimary,
                    labelText: AppStrings.EMAIL_HINT_TEXT,
                    hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                    prefixiconWidget: const Icon(Icons.email),
                  ),
                  TextFieldContainer(
                      labeltextcolor: AppColors.colorPrimary,
                      labelText: AppStrings.PASSWORD_HINT_TEXT,
                      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                      prefixiconWidget: const Icon(Icons.lock),
                      suffixiconWidget: Container(
                        child: const Icon(
                          Icons.visibility,
                        ),
                      )),
                  const SizedBox(
                    height: AppValues.height_16,
                  ),
                  CustomTextWidget(
                    text: AppStrings.FORGOT_PASSWORD,
                    fontSize: 1.2.sp,
                    textColor: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomAppBtn(
                    title: AppStrings.LOGIN_TEXT,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: AppValues.extraLargePadding),
                    child: CustomTextWidget(
                      text: AppStrings.DONT_HAVE_AN_ACCOUNT +
                          AppStrings.SIGNUP_TEXT,
                      fontSize: 1.2.sp,
                      textColor: AppColors.blackColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
