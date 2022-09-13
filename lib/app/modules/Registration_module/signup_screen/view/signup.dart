import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';

import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_app_button.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_auth_background.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_bottom_container.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_textfield_container.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../controller/signup_controller.dart';

class SignupScreenView extends RegisterView<SignupScreenController> {
  @override
  Widget body(BuildContext context) {
    return CustomAuthBackground(
      headertitletext: AppStrings.SIGNUP_TEXT,
      imagebackground: AssetPaths.SIGN_UP_SCREEN,
      child: Column(
        children: [
          _uploadprofileimage(),
          _usernametextfield(),
          _emailtextfield(),
          _chooseprogramtextfield(),
          _passwordtextfield(),
          _confirmpasswordtextfield(),
          _biotextfield(),
          _getsizedbox(),
          _signupbtn(),
          _alreadyhaveanaccounttext(),
        ],
      ),
    );
  }

  Widget _uploadprofileimage() {
    return CircleAvatar(
      radius: 60.r,
      backgroundColor: AppColors.colorPrimary,
      child: Container(
        height: 0.15.sh,
        decoration: const BoxDecoration(
            color: AppColors.whiteshade, shape: BoxShape.circle),
        child: Image.asset(AssetPaths.PROFILE_UPLOAD_ICON),
      ),
    );
  }

  Widget _usernametextfield() {
    return TextFieldContainer(
      labeltextcolor: AppColors.colorPrimary,
      labelText: AppStrings.USER_NAME_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const Icon(Icons.person),
    );
  }

  Widget _emailtextfield() {
    return TextFieldContainer(
      labeltextcolor: AppColors.colorPrimary,
      labelText: AppStrings.EMAIL_HINT_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const Icon(Icons.email),
    );
  }

  Widget _chooseprogramtextfield() {
    return TextFieldContainer(
      labeltextcolor: AppColors.colorPrimary,
      labelText: AppStrings.CHOOSE_PROGRAM,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const Icon(Icons.grade),
    );
  }

  Widget _passwordtextfield() {
    return TextFieldContainer(
        labeltextcolor: AppColors.colorPrimary,
        labelText: AppStrings.PASSWORD_HINT_TEXT,
        hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
        prefixiconWidget: const Icon(Icons.lock),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _confirmpasswordtextfield() {
    return TextFieldContainer(
        labeltextcolor: AppColors.colorPrimary,
        labelText: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        hinttext: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
        prefixiconWidget: const Icon(Icons.lock),
        suffixiconWidget: const Icon(
          Icons.visibility,
        ));
  }

  Widget _biotextfield() {
    return TextFieldContainer(
      labeltextcolor: AppColors.colorPrimary,
      labelText: AppStrings.BIO_TEXT,
      hinttext: AppStrings.USER_NAME_EMAIL_ADDRESS_TEXT,
      prefixiconWidget: const Icon(Icons.lock),
    );
  }

  Widget _getsizedbox() {
    return const SizedBox(
      height: AppValues.height_16,
    );
  }

  Widget _signupbtn() {
    return CustomAppBtn(
      title: AppStrings.SIGNUP_TEXT,
    );
  }

  Widget _alreadyhaveanaccounttext() {
    return CustomBottomContainer(
      title1: AppStrings.ALREADY_HAVE_AN_ACCOUNT,
      onclickTap: _onClicked,
      title2: AppStrings.LOGIN_TEXT,
    );
  }

  void _onClicked() {
    Get.toNamed(Routes.LOGIN_SCREEN_ROUTE);
  }
}
