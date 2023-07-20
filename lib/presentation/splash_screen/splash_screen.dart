import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/theme/color_constant.dart';
import '../../core/utils/image_constant.dart';

import '../../core/utils/responsive_ui.dart';
import '../../core/utils/size_utils.dart';
import '../common_widgets/custom_image_view.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';


class SplashScreen extends GetResponsiveView<SplashController> {
   SplashScreen({super.key});
   var splashController = Get.find<SplashController>();

@override
  Widget? phone() {
  return buildSplash();
  }

  @override
  Widget? desktop() {
    return buildSplash();
  }

  @override
  Widget? tablet() {
    return buildSplash();
  }

  @override
  Widget? watch() {
    return buildSplash();
  }


  Widget buildSplash() {
    return SafeArea(
      child: Scaffold(
        backgroundColor: screen.responsiveValue(
                         desktop: ColorConstant.light_gray,
                         tablet: ColorConstant.light_green,
                         mobile: ColorConstant.light_green,
                         watch: ColorConstant.white_light),
        body: splashView()
      ),
    );
  }

  Widget splashView() {
    return Center(
      child: CustomImageView(
          svgPath: ImageConstant.imgHome,
          height: getSize(70),
          width:  getSize(70),
          margin: getMargin(all: 5)),
    );
  }

}
