import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:swamedia_tes/core/base/base.controller.dart';
import 'package:swamedia_tes/core/model/page.state.dart';
import 'package:swamedia_tes/core/values/app_colors.dart';
import 'package:swamedia_tes/core/widget/show_snackbar.dart';
import 'package:swamedia_tes/core/widget/loading_widget.dart';

abstract class BaseView<Controller extends BaseController>
    extends GetView<Controller> {
  const BaseView({super.key});

  Widget body(BuildContext context);

  PreferredSizeWidget? appBar(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: statusBarColor(),
      child: SafeArea(
        child: pageScaffold(context),
      ),
    );
  }

  Widget pageScaffold(BuildContext context) {
    return Scaffold(
      //sets ios status bar color
      backgroundColor: pageBackgroundColor(),
      appBar: appBar(context),
      floatingActionButton: floatingActionButton(),
      body: pageContent(context),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: drawer(),
    );
  }

  Widget pageContent(BuildContext context) {
    return Stack(
      children: [
        body(context),
        Obx(() => controller.pageState == PageState.LOADING
            ? _showLoading()
            : Container()),
        Obx(() => controller.errorMessage.isNotEmpty
            ? showSnackbar(message: controller.errorMessage)
            : Container()),
        Container(),
      ],
    );
  }

  Color pageBackgroundColor() {
    return AppColors.pageBackground;
  }

  Color statusBarColor() {
    return AppColors.pageBackground;
  }

  Widget? floatingActionButton() {
    return null;
  }

  Widget? bottomNavigationBar() {
    return null;
  }

  Widget? drawer() {
    return null;
  }

  Widget _showLoading() {
    return const LoadingWidget();
  }
}