import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';

import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_bottom_container.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_text_widget.dart';
import 'package:flutter_getx_template/app/core/widget/ripple.dart';
import 'package:get/get.dart';


import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_app_button.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_auth_background.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_textfield_container.dart';


import '../../../../routes/app_pages.dart';
import '../controller/login_controller.dart';

class LoginView extends RegisterView<LoginScreenController> {
  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      iconvisibility: false,
      headertitletext: AppStrings.LOGIN_TEXT,
      imagebackground: AssetPaths.LOGIN_SCREEN_IMAGE,
      child: Column(
        children: [
          _emailTextField(),
          _passwordTextField(),
          _getSizedBox(),
          _forgotPasswordBtn(),
          _loginbtn(),
          _alreadyHaveAnAccountText(),
        ],
      ),
    );
  }

  Widget _getSizedBox() {
    return const SizedBox(
      height: AppValues.height_20,
    );
  }

  Widget _emailTextField() {
    return TextFieldContainer(
      labeltextcolor: AppColors.colorPrimary,
      labelText: AppStrings.EMAIL_HINT_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const Icon(Icons.email),
    );
  }

  Widget _passwordTextField() {
    return TextFieldContainer(
        labeltextcolor: AppColors.colorPrimary,
        labelText: AppStrings.PASSWORD_HINT_TEXT,
        hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
        prefixiconWidget: const Icon(Icons.lock),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _forgotPasswordBtn() {
    return Ripple(
      onTap: _onforgotClicked,
      child: CustomTextWidget(
        style: StyleForText.boldTitlePrimaryColorStyle,
        text: AppStrings.FORGOT_PASSWORD,
      ),
    );
  }

  Widget _loginbtn() {
    return CustomAppBtn(
      title: AppStrings.LOGIN_TEXT,
    );
  }

  Widget _alreadyHaveAnAccountText() {
    return CustomBottomContainer(
      onclickTap: _onSignupClicked,
      title1: AppStrings.DONT_HAVE_AN_ACCOUNT,
      title2: AppStrings.SIGNUP_TEXT,
    );
  }

  void _onSignupClicked() {
    Get.toNamed(Routes.SIGNUP_SCREEN_ROUTE);
  }

  void _onforgotClicked() {
    Get.toNamed(Routes.FORGOT_PASSWORD_SCREEN_ROUTE);
  }
}
