import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swamedia_tes/core/values/app_colors.dart';
import 'package:swamedia_tes/feature/splash/controller/splash_controller.dart';
import 'package:swamedia_tes/core/base/base.view.dart';
import 'package:swamedia_tes/core/widget/custom_app_bar.dart';

class SplashScreen extends BaseView<SplashController> {
  const SplashScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Color statusBarColor() {
    return AppColors.colorPrimary;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: const Padding(
        padding: EdgeInsets.all(80.0),
        child: Center(
          child: Icon(Icons.account_balance, size: 80,),
        ),
      ),
    );
  }
}
