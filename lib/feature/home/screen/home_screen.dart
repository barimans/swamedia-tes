import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swamedia_tes/core/values/app_colors.dart';
import 'package:swamedia_tes/feature/home/controller/home_controller.dart';
import 'package:swamedia_tes/core/base/base.view.dart';
import 'package:swamedia_tes/core/widget/custom_app_bar.dart';

class HomeScreen extends BaseView<HomeController> {
  const HomeScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(appBarTitleText: "Home Page");
  }

  @override
  Color statusBarColor() {
    return AppColors.colorPrimary;
  }

  @override
  Widget body(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Obx(() {
          return Column(
            children: controller.homeList.map<Widget>((user) {
              return Card(
                child: ListTile(
                  onTap: () {

                  },
                  title: Text(user.name??"-"),
                  subtitle: Text(user.position??"-"),
                ),
              );
            }).toList(),
          );
        })
    );
  }
}
