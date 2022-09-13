import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';


import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_app_button.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_auth_background.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_textfield_container.dart';

import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/controller/forgot_controller.dart';







class ForgotPasswordView extends RegisterView<ForgotPasswordController> {
  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      headertitletext: AppStrings.FORGOT_PASSWORD,
      imagebackground: AssetPaths.FORGOT_PASSWORD_SCREEN_IMAGE,
      child: Column(
        children: [_emailfield(), _sendcodeBtn()],
      ),
    );
  }

  Widget _emailfield() {
    return TextFieldContainer(
      labeltextcolor: AppColors.colorPrimary,
      labelText: AppStrings.EMAIL_HINT_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const Icon(Icons.email),
    );
  }

  Widget _sendcodeBtn() {
    return CustomAppBtn(
      title: AppStrings.SEND_CODE,
    );
  }
}
