import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:swamedia_tes/feature/splash/argument/splash_argument.dart';
import 'package:swamedia_tes/feature/splash/model/splash_model.dart';
import 'package:swamedia_tes/core/base/base.controller.dart';
import 'package:swamedia_tes/repository/splash_repository.dart';
import 'package:swamedia_tes/route/route.constant.dart';

class SplashController extends BaseController {
  final SplashRepository splashRepository = Get.find(tag: (SplashRepository).toString());
    SplashArgument? splashArgument;

    final RxList<SplashModel> _splashListController =
    RxList.empty();

    List<SplashModel> get splashList =>
        _splashListController.toList();

  @override
  void onInit() {
    // TODO: implement onInit
    _initRouteSplash();
    // getSplashData();
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

  void _initRouteSplash() async{
    try {
      await Future.delayed(const Duration(seconds: 3));

      Get.offNamed(RouteConstants.home);

    }catch (e){
      debugPrint("Error splash $e");
    }

  }

  /*void getSplashData(){
    var splashDataService = splashRepository.getDataFromApi();

    callDataService(
      splashDataService,
      onSuccess: _handleDataSplashList
    );
  }

  void _handleDataSplashList(List<YourModelList> yourModelList){
    _splashListController(yourModelList);
  }*/
}