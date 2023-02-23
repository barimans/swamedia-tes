import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:swamedia_tes/core/base/base.controller.dart';
import 'package:swamedia_tes/feature/home/argument/home_argument.dart';
import 'package:swamedia_tes/feature/home/model/employee_response_model.dart';
import 'package:swamedia_tes/repository/home_repository.dart';

class HomeController extends BaseController {
  final HomeRepository homeRepository = Get.find(tag: (HomeRepository).toString());
    HomeArgument? homeArgument;

    final RxList<Data> _homeListController =
    RxList.empty();

    List<Data> get homeList =>
        _homeListController.toList();

  @override
  void onInit() {
    // TODO: implement onInit
    homeArgument = Get.arguments;
    debugPrint("Home Argument => ${homeArgument?.id}");
    getEmployeeData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getEmployeeData(){
    var homeDataService = homeRepository.getDataEmployee();

    callDataService(
      homeDataService,
      onSuccess: _handleDataHomeList
    );
  }

  void _handleDataHomeList(List<Data>? yourModelList){
    _homeListController(yourModelList);
  }
}