import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';

import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/controller/forgot_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/Resuable_widgets/custom_app_button.dart';
import '../../../../core/utils/Resuable_widgets/custom_text_widget.dart';
import '../../../../core/widget/custom_headers.dart';
import '../widget/otp_widget.dart';

class OtpScreenView extends RegisterView<ForgotPasswordController> {
  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              child: Image.asset(AssetPaths.OTP_VERIFICATION_SCREEN_IMAGE),
            ),
            const CustomHeader(
              text: AppStrings.OTP_TEXT,
            )
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppValues.kDefaultPadding),
              child: Column(
                children: [
                  const OtpContainer(),
                  Image.asset(AssetPaths.TIME_ICON),
                  CustomAppBtn(
                    title: AppStrings.VERIFY,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: AppValues.extraLargePadding),
                    child: CustomTextWidget(
                      text: AppStrings.DIDNT_RECIEVE_CODE +
                          AppStrings.RESEND_TEXT,
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
