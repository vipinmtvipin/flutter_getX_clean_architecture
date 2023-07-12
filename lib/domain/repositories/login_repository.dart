
import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';

abstract class LoginRepository {
  Future<LoginResponds?> login(LoginRequest request);
}
