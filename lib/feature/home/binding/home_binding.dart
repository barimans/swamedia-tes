import 'package:get/get.dart';
import 'package:swamedia_tes/feature/home/controller/home_controller.dart';
import 'package:swamedia_tes/repository/home_repository.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() =>
            HomeRepository(),
            tag: (HomeRepository).toString());
  }

}