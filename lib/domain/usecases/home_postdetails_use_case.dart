import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';
import 'package:getx_clean_template_vip/domain/entity/post_responds.dart';
import 'package:getx_clean_template_vip/domain/repositories/home_repository.dart';

import '../../core/usecases/pram_usecase.dart';
import '../repositories/login_repository.dart';

class HomeUseCaseForGetPostDetails extends ParamUseCase<PostResponds?, String> {
  final HomeRepository _repo;
  HomeUseCaseForGetPostDetails(this._repo);

  @override
  Future<PostResponds?> execute(String params) {
    return _repo.getPostDetails(params);
  }
}
