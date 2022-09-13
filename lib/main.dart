import 'package:flutter/material.dart';

import 'package:flutter_getx_template/app/core/utils/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '/app/bindings/initial_binding.dart';
import '/app/core/values/app_colors.dart';
import '/app/routes/app_pages.dart';
import 'app/core/utils/app_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return GetMaterialApp(
            transitionDuration: 400.milliseconds,
            defaultTransition: Transition.rightToLeftWithFade,
            debugShowCheckedModeBanner: false,
            title: AppStrings.APP_TITLE_TEXT,
            initialRoute: AppPages.INITIAL,
            initialBinding: InitialBinding(),
            getPages: AppPages.routes,
            theme: ThemeData(
              backgroundColor: AppColors.pageBackground,
              primaryColor: AppColors.colorPrimary,
              fontFamily: RobotofontFamily,
            ),
          );
        });
  }
}
