import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/register/register_view.dart';

import 'package:flutter_getx_template/app/core/utils/Resuable_widgets/custom_textfield_container.dart';
import 'package:flutter_getx_template/app/core/utils/app_assets_path.dart';
import 'package:flutter_getx_template/app/core/utils/app_strings.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/controller/signup_controller.dart';

import '../../../../core/utils/Resuable_widgets/custom_app_button.dart';
import '../../../../core/widget/custom_headers.dart';

class ResetScreenView extends RegisterView<SignupScreenController> {
  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              child: Image.asset(AssetPaths.RESET_PASSWORD_SCREEN_IMAGE),
            ),
            const CustomHeader(
              text: AppStrings.RESET_PASSWORD,
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
                      labelText: AppStrings.CONFIRM_NEW_PASSWORD_TEXT,
                      hinttext: AppStrings.ENTER_NEW_PASSWORD_TEXT,
                      prefixiconWidget: const Icon(Icons.lock),
                      suffixiconWidget: Container(
                        child: const Icon(
                          Icons.visibility,
                        ),
                      )),
                  TextFieldContainer(
                      labeltextcolor: AppColors.colorPrimary,
                      labelText: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
                      hinttext: AppStrings.CONFIRM_PASSWORD_HINT_TEXT,
                      prefixiconWidget: const Icon(Icons.lock),
                      suffixiconWidget: Container(
                        child: const Icon(
                          Icons.visibility,
                        ),
                      )),
                  const SizedBox(
                    height: AppValues.height_16,
                  ),
                  CustomAppBtn(
                    title: AppStrings.CHANGE_PASSWORD,
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
