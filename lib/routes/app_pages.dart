import 'package:get/get.dart';

import '../modules/boarding/onboard.dart';
import '../modules/home/home.dart';
import '../modules/splash/splash.dart';
import '../modules/auth/auth.dart';
part './app_routes.dart';

class AppPages {
  static const initial = RouteName.onboard;
  // static const initial = RouteName.home;

  static final pages = [
    //Welcome Page
    GetPage(
      name: RouteName.splash,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RouteName.onboard,
      page: () => OnBoarding(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: RouteName.forgotPassword,
      page: () => ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
