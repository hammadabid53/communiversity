import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

abstract class RegisterView<Controller> extends GetView<Controller> {
  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Scaffold(
    
        resizeToAvoidBottomInset: true,
        // backgroundColor: ,
        body: pageContent(context),
      ),
    );
  }

  Widget pageContent(BuildContext context) {
    return SafeArea(
      child: body(context),
    );
  }
}
