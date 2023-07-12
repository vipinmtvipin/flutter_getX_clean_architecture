
/*
 * Copyright (c) 2021, Vipin.
 */
import 'package:dio/dio.dart';

import 'package:getx_clean_template_vip/core/constants/constants.dart' show NetworkKeys;

import '../../core/network/logging_interceptor.dart';

class ApiService {
  ApiService._internal() {
    dio =  Dio();
    dio.options
      ..baseUrl = NetworkKeys.base_url
      ..connectTimeout = 100000
      ..receiveTimeout =  100000;
    dio.interceptors.add(LoggingInterceptor());
  }

  late Dio dio;

  static final ApiService _instance = ApiService._internal();

  factory ApiService() {
    return _instance;
  }
}
