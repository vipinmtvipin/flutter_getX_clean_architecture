import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_clean_template_vip/core/theme/app_style.dart';


class BaseController extends GetxController {

  var isLoading = false.obs;

  void showLoadingDialoge() {
     Future.delayed(Duration.zero, ()
       {
      if(!isLoading.value) {
        Get.defaultDialog(
          title: "",
          backgroundColor: Colors.transparent,
          content: spinkitloader,
          onWillPop: () async => false,
          barrierDismissible: false,);
      }
          isLoading(true);
    });

  }


  void hideLoadingDialoge(){
    if(isLoading.value) {
      Get.back();
    }
    isLoading.value = false;
  }


  static final loader =  WillPopScope(
    // device back arrow press time did not hide the dialog
      onWillPop: () async => false,
      child:  spinkitloader,);


  static final spinkitloader  = Center(
    child:  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // PouringHourGlass
        const SpinKitPouringHourGlass(color: Colors.white,
             strokeWidth: 2.0,
             duration: Duration(seconds: 3),
             size: 55),

        const SizedBox(height: 13.0,),

        Text('Please Wait...', style: AppStyle.txtPoppinsBold20Lightblue),

      ],
    ),
  );


  // common toast bar
  void showToast(String msg, {int? duration}) {
    Fluttertoast.showToast(msg: msg, gravity: ToastGravity.BOTTOM);
  }

  // common snack bar
  showSnackBar(String title, String message, Color backgroundColor) {
    Get.snackbar(title, message,
        snackPosition: SnackPosition.BOTTOM,
        margin: const EdgeInsets.only(bottom: 10, left: 8,right: 8),
        backgroundColor: backgroundColor,
        colorText: Colors.white);
  }

}