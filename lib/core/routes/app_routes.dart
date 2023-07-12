import 'package:get/get.dart';

import '../../presentation/home_screen/binding/home_binding.dart';
import '../../presentation/home_screen/home_screen.dart';
import '../../presentation/login_screen/binding/login_binding.dart';
import '../../presentation/login_screen/login_screen.dart';
import '../../presentation/splash_screen/binding/splash_binding.dart';
import '../../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),

    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),

    GetPage(
      name: homePage,
      page: () => const HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),

    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
