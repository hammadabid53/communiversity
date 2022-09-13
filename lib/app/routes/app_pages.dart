import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/binding/forgot_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/forgot_password/view/forgot_password.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/login_screen/binding/login_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/login_screen/view/login_view.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/binding/otp_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/otp_screen/view/otp_screen.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/reset_password/binding/reset_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/reset_password/view/reset_screen.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/binding/signup_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/signup_screen/view/signup.dart';

import 'package:flutter_getx_template/app/modules/Registration_module/splashscreen/binding/splash_screen_binding.dart';
import 'package:flutter_getx_template/app/modules/Registration_module/splashscreen/view/Splashview.dart';
import 'package:get/get.dart';

import '../modules/Core_module/Events/bindings/Events_binding.dart';
import '../modules/Core_module/Events/views/Events_view.dart';

import '../modules/Core_module/home/bindings/home_binding.dart';
import '../modules/Core_module/home/views/home_view.dart';
import '/app/modules/main/bindings/main_binding.dart';
import '/app/modules/main/views/main_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN_ROUTE,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_SCREEN_ROUTE,
      page: () => EventsView(),
      binding: EventsBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN_ROUTE,
      page: () => SplashView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN_ROUTE,
      page: () => LoginView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP_SCREEN_ROUTE,
      page: () => SignupScreenView(),
      binding: SignupScreenBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD_SCREEN_ROUTE,
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERFICATION_ROUTE,
      page: () => OtpScreenView(),
      binding: OtpScreenBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD_ROUTE,
      page: () => ResetScreenView(),
      binding: ResetScreenBinding(),
    ),
  ];
}
