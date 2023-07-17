
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';
import 'package:getx_clean_template_vip/domain/repositories/login_repository.dart';

import '../../core/constants/constants.dart';
import '../../core/network/dio_exception.dart';
import '../api/api_service.dart';

class LoginRepositoryIml extends LoginRepository {

  @override
  Future<LoginResponds?> login(LoginRequest request)  async {
    try {
      Response response = await ApiService.instance.post(NetworkKeys.login,
          data: request, options: Options(contentType: 'application/json'));

        final LoginResponds _data = LoginResponds.fomJson(response.data);
        return _data;
    }on DioException catch(e){
      var error = DioExceptionData.fromDioError(e);
      throw error.errorMessage;
    }
  }


}
