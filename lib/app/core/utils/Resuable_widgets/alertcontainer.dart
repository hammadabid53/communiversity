import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_getx_template/app/core/values/text_styles.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';



class AlertContainer extends StatelessWidget {
  final String text;
  final Color containercolor;
  final Color textcolor;
  void Function()? onclickTap;

  AlertContainer(
      {required this.onclickTap,
      required this.textcolor,
      required this.containercolor,
      required this.text,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclickTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        padding: EdgeInsets.only(left: 35.w, bottom: 6, top: 6, right: 35.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                style: BorderStyle.solid, color: AppColors.colorPrimary),
            color: containercolor),
        child: Center(
          child: Text(
            text,
            style: pageTitleStyle
                
                
                
                ,
          ),
        ),
      ),
    );
  }
}
