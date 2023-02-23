import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:swamedia_tes/route/route.constant.dart';

import 'package:swamedia_tes/feature/splash/binding/splash_binding.dart';
import 'package:swamedia_tes/feature/splash/screen/splash_screen.dart';
import 'package:swamedia_tes/feature/home/binding/home_binding.dart';
import 'package:swamedia_tes/feature/home/screen/home_screen.dart';
// PLEASE DON'T REMOVE THIS IMPORT LINE

class RoutePages{
  static final List<GetPage> pages = [
    // GetPage(
    //   name: RouteConstants.example,
    //   page: () => const ExampleScreen(),
    //   binding: ExampleBinding(),
    // ),

    GetPage(
      name: RouteConstants.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
  
      GetPage(
      name: RouteConstants.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
  
      // PLEASE DON'T REMOVE THIS LINE
  ];
}