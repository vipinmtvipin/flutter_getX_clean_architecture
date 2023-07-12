
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';
import 'package:getx_clean_template_vip/domain/repositories/login_repository.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/logger.dart';
import '../../core/utils/progress_dialog_utils.dart';
import '../api/api_service.dart';

class LoginRepositoryIml extends LoginRepository {

  final _apiService = Get.find<ApiService>();

  @override
  Future<LoginResponds?> login(LoginRequest request)  async {
    try {
      Response response = await _apiService.dio.post(NetworkKeys.login,
          data: request,
          options: Options(contentType: 'application/json'));

      if(response.statusCode == 200) {
        Logger.log("LoginRespond"," ${response.toString()}");
        final LoginResponds _datas = loginFromJson(response.toString());
        Logger.log("LoginRespond"," --- ${_datas.username}");
        return _datas;
      }else {
        return null;
      }
    } catch (error, stacktrace) {
        Logger.log("Tag","LoginRespond***error***** ${error.toString()}");
       return null;
    }
  }


}
