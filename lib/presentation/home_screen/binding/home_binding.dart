import 'package:getx_clean_template_vip/presentation/home_screen/controller/home_controller.dart';

import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
