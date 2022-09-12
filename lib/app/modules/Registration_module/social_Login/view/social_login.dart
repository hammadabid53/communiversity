import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/social_Login/controller/social_login_controller.dart';

import '../../../../core/register/register_view.dart';
import '../../../../core/values/text_styles.dart';

class SocialLogin extends RegisterView<SocialLoginController> {
  @override
  Widget body(BuildContext context) {
  
    return Container(
        // height: 400,
        color: AppColors.statusBarColor,
        child: Padding(
          padding: const EdgeInsets.only(
              left: AppValues.smallPadding, right: AppValues.smallPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColoredBox(
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: AppValues.extraLargeMargin,
                        vertical: AppValues.largeMargin),
                    child: const Text(
                      'SocialLogin is working',
                      style: titleStyle,
                    )),
                color: AppColors.textColorWhite,
              ),
              const SizedBox(
                height: AppValues.margin_10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: "email Address",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    filled: true,
                    fillColor: AppColors.textColorWhite),
              ),
              const SizedBox(
                height: AppValues.margin_10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    filled: true,
                    fillColor: AppColors.textColorWhite),
              )
            ],
          ),
        ));
  }
}
