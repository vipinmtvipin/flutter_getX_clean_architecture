
import 'package:get/get.dart';


import '../../data/repositories/login_repository_iml.dart';

import '../../presentation/service/common_service.dart';


class InitialBindings extends Bindings {
  @override
  void dependencies() {

   /// here we can inject loading time needed classes
    Get.lazyPut(() => CommonService());
    Get.lazyPut(() => LoginRepositoryIml());
  }
}
