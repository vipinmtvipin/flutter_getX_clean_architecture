import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';

import '../../core/usecases/pram_usecase.dart';
import '../repositories/login_repository.dart';

class CommonUseCase {
  final LoginRepository _repo;
  CommonUseCase(this._repo);

  Future<LoginResponds?> loginAction(LoginRequest params) {
    return _repo.login(params);
  }

  Future<LoginResponds?> signupAction(LoginRequest params) {
    return _repo.login(params);
  }

  Future<LoginResponds?> restPasswordAction(LoginRequest params) {
    return _repo.login(params);
  }

}
