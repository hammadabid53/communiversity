import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_colors.dart';



class CustomAuthBackgroundWidget extends StatefulWidget {
  final bool backIconEnable;
  final bool isnavibarEnable;

  const CustomAuthBackgroundWidget({
    this.isnavibarEnable = true,
    this.backIconEnable = true,
  });

  @override
  State<CustomAuthBackgroundWidget> createState() =>
      _CustomAuthBackgroundWidgetState();
}

class _CustomAuthBackgroundWidgetState
    extends State<CustomAuthBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.pageBackground,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
              )
            ],
          ),
        ));
  }
}
