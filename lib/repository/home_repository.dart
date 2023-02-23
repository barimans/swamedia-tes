import 'dart:convert';

import 'package:haibarrr/helper/utils.dart';
import 'package:swamedia_tes/app/app.dart';
import 'package:swamedia_tes/constants/canoncial_path.dart';
import 'package:swamedia_tes/feature/home/model/employee_response_model.dart';

class HomeRepository{
  Future<List<Data>?> getDataEmployee() async{
    try {
      final response = myApiClient.getData("");
      debugPrint("JJJ => ${response.toString()}");
      var dataJson = jsonDecode(response.toString());
      List<dynamic> data = (dataJson["data"] ?? []) as List<dynamic>;
      List<Data>? listEmployee =
      data.map((json) => Data.fromJson(json)).toList();

      return listEmployee;
    }catch (e) {
      debugPrint("HHH");
      rethrow;
    }
  }
}