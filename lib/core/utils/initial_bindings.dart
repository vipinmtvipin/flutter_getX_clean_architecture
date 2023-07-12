
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:get/get.dart';

import '../../data/api/api_service.dart';
import '../../data/repositories/home_repository.dart';
import '../../data/repositories/login_repository.dart';
import '../network/connectivity_service.dart';


class InitialBindings extends Bindings {
  @override
  void dependencies() {

    Get.put(ApiService());

    Get.lazyPut(() => LoginRepositoryIml());
    Get.lazyPut(() => HomeRepositoryIml());


  }
}
