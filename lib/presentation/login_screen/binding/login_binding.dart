import '../../../data/repositories/login_repository.dart';
import '../../../domain/usecases/login_use_case.dart';
import '../controller/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut(() => LoginUseCase(Get.find<LoginRepositoryIml>()));
    Get.lazyPut(() => LoginController(Get.find()));
  }
}
