import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/widget/Resuable_widgets/custom_header.dart';

import 'package:get/get.dart';

import '../../values/app_values.dart';

class CustomAuthBackground extends StatelessWidget {
  String? headertitletext;
  bool? iconvisibility = true;
  String? imagebackground;
  Widget? child;
  CustomAuthBackground(
      {this.child,
      this.imagebackground,
      this.iconvisibility,
      this.headertitletext,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Image.asset(imagebackground.toString()),
          CustomHeaderApp(
            onTap: _ontap,
            iconvisibility: iconvisibility ?? true,
            title: headertitletext,
          ),
        ],
      ),
      Expanded(
          child: SingleChildScrollView(
              child: Padding(
                  padding: const EdgeInsets.all(AppValues.kDefaultPadding),
                  child: child)))
    ]);
  }

  void _ontap() {
    Get.back();
  }
}
