import 'dart:io';
import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';
import 'dart:convert';

import 'package:getx_clean_template_vip/domain/repositories/login_repository.dart';

class MockLoginRepository extends LoginRepository {
  @override
  Future<LoginResponds> login(LoginRequest params) async {
    final file = File('test/data/login_data_sample.json');
    final response = await file.readAsString();
    final data = await json.decode(response);
    return LoginResponds.fomJson(data);
  }

 /* @override
  Future<HomeModel> fetchNewsByCategory(
      String keyword, int page, int pageSize) async {
    final file = File('test/data/home_data_sample.json');
    final response = await file.readAsString();
    final data = await json.decode(response);
    return HomeModel.fromJson(data);
  }*/
}
