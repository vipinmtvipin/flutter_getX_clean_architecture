
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:get/get.dart';

import '../../data/api/api_service.dart';
import '../../data/repositories/home_repository_iml.dart';
import '../../data/repositories/login_repository_iml.dart';
import '../../presentation/service/common_service.dart';
import '../network/connectivity_service.dart';


class InitialBindings extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut(() => CommonService());

    Get.lazyPut(() => LoginRepositoryIml());

  }
}
