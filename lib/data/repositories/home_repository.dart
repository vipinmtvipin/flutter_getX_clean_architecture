
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;
import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';
import 'package:getx_clean_template_vip/domain/entity/post_responds.dart';
import 'package:getx_clean_template_vip/domain/repositories/home_repository.dart';
import 'package:getx_clean_template_vip/domain/repositories/login_repository.dart';

import '../../core/constants/constants.dart';
import '../../core/network/dio_exception.dart';
import '../../core/utils/logger.dart';
import '../../core/utils/progress_dialog_utils.dart';
import '../api/api_service.dart';

class HomeRepositoryIml extends HomeRepository {


  @override
  Future<PostResponds?> getPostDetails(String id) {
    // TODO: implement getPostList
    throw UnimplementedError();
  }

  @override
  Future<PostResponds?> getPostList() async {
  /*  try {
      Response response = await ApiService.instance.get(NetworkKeys.products,
        // queryParameters: "",
          options: Options(contentType: 'application/json',));

        // final Map responseBody = json.decode(response.data);
        final List<PostResponds> _datas =  cartFromJson(response.toString());
        return _datas;

    }on DioException catch(e){
      var error = DioExceptionData.fromDioError(e);
      throw error.errorMessage;
    }*/

    // TODO: implement getPostList
    throw UnimplementedError();
  }


}
