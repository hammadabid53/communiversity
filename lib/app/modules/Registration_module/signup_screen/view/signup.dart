import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';

import 'package:flutter_getx_template/app/core/utils/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_getx_template/app/core/utils/Resuable_widgets/custom_textfield_container.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/controller/signup_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/Resuable_widgets/custom_app_button.dart';
import '../../../../core/widget/custom_headers.dart';

class SignupScreenView extends RegisterView<SignupScreenController> {
  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              child: Image.asset(AssetPaths.SIGN_UP_SCREEN),
            ),
            const CustomHeader(
              text: AppStrings.SIGNUP_TEXT,
            )
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppValues.kDefaultPadding),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60.r,
                    backgroundColor: AppColors.colorPrimary,
                    child: Container(
                      height: 0.15.sh,
                      decoration: const BoxDecoration(
                          color: AppColors.whiteshade, shape: BoxShape.circle),
                      child: Image.asset(AssetPaths.PROFILE_UPLOAD_ICON),
                    ),
                  ),
                  TextFieldContainer(
                    labeltextcolor: AppColors.colorPrimary,
                    labelText: AppStrings.USER_NAME_TEXT,
                    hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                    prefixiconWidget: const Icon(Icons.person),
                  ),
                  TextFieldContainer(
                    labeltextcolor: AppColors.colorPrimary,
                    labelText: AppStrings.EMAIL_HINT_TEXT,
                    hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                    prefixiconWidget: const Icon(Icons.email),
                  ),
                  TextFieldContainer(
                    labeltextcolor: AppColors.colorPrimary,
                    labelText: AppStrings.CHOOSE_PROGRAM,
                    hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                    prefixiconWidget: const Icon(Icons.grade),
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
                  TextFieldContainer(
                      labeltextcolor: AppColors.colorPrimary,
                      labelText: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
                      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                      prefixiconWidget: const Icon(Icons.lock),
                      suffixiconWidget: Container(
                        child: const Icon(
                          Icons.visibility,
                        ),
                      )),
                  TextFieldContainer(
                    labeltextcolor: AppColors.colorPrimary,
                    labelText: AppStrings.BIO_TEXT,
                    hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
                    prefixiconWidget: const Icon(Icons.lock),
                  ),
                  const SizedBox(
                    height: AppValues.height_16,
                  ),
                  CustomAppBtn(
                    title: AppStrings.LOGIN_TEXT,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: AppValues.extraLargePadding),
                    child: CustomTextWidget(
                      text: AppStrings.ALREADY_HAVE_AN_ACCOUNT +
                          AppStrings.LOGIN_TEXT,
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
