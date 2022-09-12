import 'package:flutter/material.dart';

import '../app_assets_path.dart';



class BackgroundImage extends StatelessWidget {
  final Widget? child;
  Key? key;
  BackgroundImage({
    this.key,
   this.child,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetPaths.SEARCH_ICON),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: Center(child: child),
      ),
    );
  }
}
