import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';

import 'package:flutter_getx_template/app/core/utils/Resuable_widgets/custom_textfield_container.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/controller/forgot_controller.dart';

import '../../../../core/utils/Resuable_widgets/custom_app_button.dart';
import '../../../../core/widget/custom_headers.dart';

class ForgotPasswordView extends RegisterView<ForgotPasswordController> {
  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              child: Image.asset(AssetPaths.FORGOT_PASSWORD_SCREEN_IMAGE),
            ),
            const CustomHeader(
              text: AppStrings.FORGOT_PASSWORD,
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
                  CustomAppBtn(
                    title: AppStrings.SEND_CODE,
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
