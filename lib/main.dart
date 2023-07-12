import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'core/localization/app_localization.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/themes.dart';
import 'core/utils/initial_bindings.dart';
import 'core/utils/logger.dart';
import 'core/utils/resource_string.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /** init the local session storage**/
  await GetStorage.init();
  /** load resource strings **/
  ResourceString();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: const Locale('en', 'US'),
      title: 'GetX Template',
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
