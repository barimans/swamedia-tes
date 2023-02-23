import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swamedia_tes/feature/splash/binding/splash_binding.dart';
import 'package:swamedia_tes/route/route.pages.dart';
import 'package:swamedia_tes/services/api_client.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
ApiClient myApiClient = ApiClient();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Getex Cuy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
      ),
      navigatorKey: navigatorKey,
      getPages: RoutePages.pages,
      initialBinding: SplashBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
}