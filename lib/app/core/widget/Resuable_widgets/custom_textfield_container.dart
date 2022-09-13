import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_getx_template/app/core/utils/constant.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldContainer extends StatelessWidget {
  final String? hinttext;
  final String? headingText;
  final Color? labeltextcolor;
  void Function()? onTapsuffixicon;
  final bool? isPrefixImageEnable;
  final String? isprefiximage;
  final String? issufiximage;
  final bool? issufixImageEnable;
  final Color? prefixIconColor;
  EdgeInsetsGeometry? contentPadding;
  final Widget? prefixiconWidget;
  final bool? SuffixPathStatus;
  final bool? PrefixPathStatus;
  final double? preiconscalesize;
  final double? suffixiconscalesize;
  final Widget? suffixiconWidget;
  String? labelText;
  final double? PrefixIconWidth;
  FocusNode? focusNode;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  void Function(String)? onChanged;
  Color? textfieldcolor;
  @override
  Key? key;
  bool? readonly;
  bool? obsecureText;
  String? Function(String?)? validator;
  final TextEditingController? controller;

  TextFieldContainer(
      {this.controller,
      this.prefixiconWidget,
      this.suffixiconscalesize,
      this.PrefixPathStatus,
      this.preiconscalesize,
      this.SuffixPathStatus,
      this.labelText,
      this.textfieldcolor,
      this.readonly,
      this.contentPadding,
      this.onTapsuffixicon,
      this.suffixiconWidget,
      this.focusNode,
      this.onChanged,
      this.inputFormatters,
      this.keyboardType,
      this.PrefixIconWidth,
      this.prefixIconColor,
      this.labeltextcolor,
      this.isprefiximage,
      this.issufiximage,
      this.issufixImageEnable,
      this.isPrefixImageEnable,
      this.headingText,
      this.obsecureText = true,
      this.hinttext,
      this.validator,
      this.key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50.h,
            width: 1.sw,
            // width: ScreenMediaQuery.widthSize,
            margin: EdgeInsets.only(
              top: 15.h,
            ),
            decoration: BoxDecoration(
                color: textfieldcolor ??
                    AppColors.textColorPrimary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30.r)),
            child: TextFormField(
              onChanged: onChanged,
              readOnly: readonly ?? false,
              inputFormatters: inputFormatters,
              keyboardType: keyboardType,
              validator: validator,
              focusNode: focusNode,
              obscureText: obsecureText ?? false,
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: suffixiconWidget,
                labelStyle: TextStyle(color: labeltextcolor),
                labelText: labelText,
                prefixIcon: prefixiconWidget,
                prefixIconColor: prefixIconColor,
                contentPadding: contentPadding ??
                    EdgeInsets.only(left: 10.w, bottom: 10.w, top: 10.w),
                border: InputBorder.none,
                hintText: hinttext,
                hintStyle: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.blackColor.withOpacity(0.8),
                ),
              ),
            ))
        .addNeumorphism(
            blurRadius: 0.5,
            spreadradius: 0.1,
            offset: const Offset(0, 15),
            bottomShadowColor: AppColors.colorPrimarySwatch.withOpacity(0.02));
  }
}
