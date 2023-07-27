import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:getx_clean_template_vip/presentation/home_screen/controller/home_controller.dart';


import '../../core/theme/app_text_style.dart';
import '../../core/theme/color_constant.dart';

import '../../core/utils/image_constant.dart';

import '../../core/utils/responsive_ui.dart';
import '../../core/utils/size_utils.dart';

import 'package:flutter/material.dart';

import '../common_widgets/appbar/appbar_image.dart';
import '../common_widgets/appbar/appbar_title.dart';
import '../common_widgets/appbar/custom_app_bar.dart';
import '../common_widgets/elevated_container.dart';
import '../common_widgets/ripple.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: mobileHomeView(),
      desktop: webHomeView(),
      tablet: mobileHomeView(),
    );
  }

  Widget mobileHomeView() {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Get.isDarkMode
                ? AppColors.lightFont
                : AppColors.lightGreen,
            appBar: CustomAppBar(
                height: getVerticalSize(66),
                leadingWidth: 30,
                leading: IconButton(
                  iconSize: 24,
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.black,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: AppbarTitle(
                    text: "view_details".tr, margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 13, top: 15, right: 13, bottom: 16),
                      onTap: () {
                        onTapLangauge();
                      }),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 13, top: 15, right: 13, bottom: 16),
                      onTap: () {
                        onTapTheme();
                      }),
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text("msg_welcome".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppTextStyle.txtBold16.copyWith(
                                letterSpacing: getHorizontalSize(0.5))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Your Token \n ${controller.token}",
                            textAlign: TextAlign.center,
                            style: AppTextStyle.txtBold16),
                      )),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircularProgressIndicator(
                          color: AppColors.orange,
                          strokeWidth: 2,
                        ),
                      ),
                    ]))));
  }

  Widget webHomeView() {
    return Container();
  }

  void onTapLangauge() {
    Get.updateLocale(const Locale('ar', 'AR'));
  }

  void onTapTheme() {
    Get.updateLocale(const Locale('en', 'US'));
    Get.changeTheme(
      Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
    );
  }
}
