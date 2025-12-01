import 'dart:convert';
import 'dart:developer';
import 'package:child_name/app/data/model/childName_model/child_name.dart';
import 'package:child_name/app/data/service/api/all_api/all_api.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;

class ChildNameApi {
  Future getData() async {
    List<ChildNameModel> NameModel = [];
    try {
      Uri url = Uri.parse(AllApi.childName);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        List data = jsonDecode(response.body)['data'];
        for (var i in data) {
          NameModel.add(ChildNameModel.fromJson(i));
        }
        await EasyLoading.showSuccess("Data Loaded Successfully");
        return NameModel;
      } else if (response.statusCode == 404) {
        await EasyLoading.showError("Something went wrong");
      } else {
        await EasyLoading.showError("Something went wrong");
      }
    } catch (e) {
      log("====Error: ${e}");
    }
  }
}
