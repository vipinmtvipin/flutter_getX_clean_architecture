import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';

import '../../core/usecases/pram_usecase.dart';
import '../repositories/login_repository.dart';

class LoginUseCase extends ParamUseCase<LoginResponds?, LoginRequest> {
  final LoginRepository _repo;
  LoginUseCase(this._repo);

  @override
  Future<LoginResponds?> execute(LoginRequest params) {
    return _repo.login(params);
  }
}
