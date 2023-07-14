import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';
import 'package:getx_clean_template_vip/domain/entity/post_responds.dart';
import 'package:getx_clean_template_vip/domain/repositories/home_repository.dart';

import '../../core/usecases/no_param_usecase.dart';
import '../../core/usecases/pram_usecase.dart';
import '../repositories/login_repository.dart';

class HomeUseCaseForGetPosts extends NoParamUseCase<PostResponds?> {
  final HomeRepository _repo;

  HomeUseCaseForGetPosts(this._repo);

  @override
  Future<PostResponds?> execute() => _repo.getPostList();
}