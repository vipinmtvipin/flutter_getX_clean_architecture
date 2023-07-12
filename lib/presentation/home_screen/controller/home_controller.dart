

import 'package:get/get.dart';
import 'package:getx_clean_template_vip/core/utils/logger.dart';

import '../../../core/routes/navigation_args.dart';
import '../../base_controller.dart';

class HomeController extends BaseController {

  var id = Get.arguments[NavigationArgs.id];
  var token = Get.arguments[NavigationArgs.data];

  @override
  void onInit() {
    Logger.log("HomeScreen", "-- token: $token");
  }
}
