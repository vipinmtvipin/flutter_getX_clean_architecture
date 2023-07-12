
import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_clean_template_vip/core/utils/logger.dart';

import '../../../core/routes/app_routes.dart';
import '../models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
      Logger.log("Tag","splash loading.....onReady...");
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offAllNamed(
        AppRoutes.loginScreen,
      );
    });
}

@override
void onInit() {
  super.onInit();
    Logger.log("Tag","splash loading....onInit....");
}


@override
  void onClose() {
    super.onClose();
      Logger.log("Tag","splash loading....onClose....");
  }
}
