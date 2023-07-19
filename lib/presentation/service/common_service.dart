

import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

import '../../core/utils/logger.dart';


/// this class available for entire app life time same life cycle of GetxController
class CommonService extends GetxService {


  @override
  void onInit() {
    super.onInit();
    Logger.log("CommonService","----Common service lunched-----");

    /// we can handle here commonly used api's / notification count etc..
  }



}