import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/theme/color_constant.dart';
import '../../core/utils/image_constant.dart';

import '../../core/utils/responsive_ui.dart';
import '../../core/utils/size_utils.dart';
import '../common_widgets/custom_image_view.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';


class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.lightBlue,
        body: Responsive(
          mobile: mobileSplashView(),
          desktop: webSplashView(),
          tablet: mobileSplashView(),
          //tablet: body(),
        ),
      ),
    );
  }

  Widget mobileSplashView() {
    return SizedBox(
        width: double.maxFinite,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgHome,
                  height: getSize(72),
                  width: getSize(72),
                  margin: getMargin(bottom: 5))
            ]));
  }

  Widget webSplashView() {
    return SizedBox(
        width: double.maxFinite,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgHome,
                  height: getSize(52),
                  width: getSize(82),
                  margin: const EdgeInsets.all(10),)
            ]));
  }

}
