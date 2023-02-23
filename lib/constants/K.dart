import 'package:swamedia_tes/flavors/build_config.dart';
import 'package:swamedia_tes/flavors/environment.dart';

class K {
  static String baseUrlUser = BuildConfig.instance.environment == Environment.STAG
      ? 'https://reqres-user.in/api/'
      : 'https://haibarr-user-prod/api/';

  static String baseUrlCore = BuildConfig.instance.environment == Environment.STAG
      ? 'https://63a167d8a543280f775561e5.mockapi.io/flutter'
      : 'https://haibarr-core-prod/api/';
}
