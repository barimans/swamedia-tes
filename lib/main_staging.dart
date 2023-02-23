import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:swamedia_tes/app/app.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:swamedia_tes/flavors/build_config.dart';
import 'package:swamedia_tes/flavors/env_config.dart';
import 'package:swamedia_tes/flavors/environment.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  EnvConfig envConfig = EnvConfig(appsName: "", baseUrl: "");

  BuildConfig.instantiate(
      envType: Environment.STAG,
      envConfig: envConfig);

  runZonedGuarded(() {
    initializeDateFormatting().then((_) => runApp(
        const MyApp()));
  }, (error, stackTrace) async {});
}
