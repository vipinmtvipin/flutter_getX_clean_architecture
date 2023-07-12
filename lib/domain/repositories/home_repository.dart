
import 'package:getx_clean_template_vip/data/model/login/login_request.dart';
import 'package:getx_clean_template_vip/domain/entity/login_responds.dart';

import '../entity/post_responds.dart';

abstract class HomeRepository {
  Future<List<PostResponds>?> getPostList();
  Future<PostResponds?> getPostDetails(String id);
}
