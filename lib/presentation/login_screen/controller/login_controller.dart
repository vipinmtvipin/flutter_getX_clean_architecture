import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_clean_template_vip/core/constants/constants.dart';
import 'package:getx_clean_template_vip/core/utils/logger.dart';
import 'package:getx_clean_template_vip/domain/usecases/login_use_case.dart';

import '../../../core/network/connectivity_service.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/routes/navigation_args.dart';
import '../../../core/utils/resource_string.dart';
import '../../../data/model/login/login_request.dart';
import '../../../domain/entity/login_responds.dart';
import '../../base_controller.dart';

class LoginController extends BaseController {
  LoginController(this._loginUseCase);

  final LoginUseCase _loginUseCase;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  /// hard coded values for testing purpose
  Rx<String> username = Rx("kminchelle");
  Rx<String> password = "0lelplR".obs;

  var isvalidEmail = false.obs;
  var isvalidPassword = false.obs;

  final sessionStorage = GetStorage();

  @override
  void onReady() {
    super.onReady();
    emailController.text = username.value;
    passwordController.text = password.value;
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  callLogin() async {
    if (await ConnectivityService.isConnected()) {
      showLoadingDialoge();

      LoginRequest postLoginRequest = LoginRequest(
          username: emailController.text, password: passwordController.text);

      try {
        var responds = await _loginUseCase.execute(postLoginRequest);
        if (responds != null) {
          hideLoadingDialoge();
          Logger.log("LOGIN", "----- Login Success-- ${responds.firstName}");
          _handleLoginSuccessData(responds.token!);
          _onOnTapLogInSuccess(responds);
        }
      } catch (e) {
        hideLoadingDialoge();
        showToast(e.toString());
      }
    } else {
      showToast(ResourceString().getString("no_network")!);
      /// when we use localization
      //showToast("no_network".tr);
    }
  }

  void _onOnTapLogInSuccess(LoginResponds responds) {
    Get.toNamed(AppRoutes.homePage, arguments: {
      NavigationArgs.id: responds.id!,
      NavigationArgs.data: responds.token!
    });
  }

  void _onPasswordChanged() {
    isvalidPassword.value = !GetUtils.isNullOrBlank(passwordController!.text)!;
  }

  void _onEmailChanged() {
    isvalidEmail.value = !GetUtils.isEmail(emailController!.text)!;
  }

  void _handleLoginSuccessData(String token) {
    // save value session
    sessionStorage.write(StorageKeys.token, token);
    // fetch date from session
    var data = sessionStorage.read(StorageKeys.token);
    Logger.log("LOGIN", 'Logged token is :--- $data');
  }
}
