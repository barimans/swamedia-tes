import 'package:get/get.dart';
import 'package:swamedia_tes/feature/splash/controller/splash_controller.dart';
import 'package:swamedia_tes/repository/splash_repository.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() =>
            SplashRepository(),
            tag: (SplashRepository).toString());
  }

}