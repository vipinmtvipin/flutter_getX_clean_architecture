import 'package:getx_clean_template_vip/presentation/home_screen/controller/home_controller.dart';

import 'package:get/get.dart';

import '../../../data/repositories/home_repository.dart';
import '../../../domain/usecases/home_post_use_case.dart';
import '../../../domain/usecases/home_postdetails_use_case.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeUseCaseForGetPosts(Get.find<HomeRepositoryIml>()));
    Get.lazyPut(() => HomeUseCaseForGetPostDetails(Get.find<HomeRepositoryIml>()));
    Get.lazyPut(() => HomeController(Get.find(), Get.find() ));
  }
}
