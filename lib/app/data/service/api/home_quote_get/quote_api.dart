import 'dart:convert';
import 'dart:developer';
import 'package:child_name/app/data/model/Quote_show_model/quote_show_model.dart';
import 'package:child_name/app/data/service/api/all_api/all_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class QuoteApi {
  List<QuoteModel> ModelDataFromApi = [];
  Future getData() async {
    try {
      Uri url = Uri.parse(AllApi.quoteData);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        dynamic jsonData = jsonDecode(response.body)['data'];
        for (var a in jsonData) {
          var data = QuoteModel.fromJson(a);
          ModelDataFromApi.add(data);
        }
        Get.snackbar(
          colorText: Colors.white,
          "Massage",
          "Data Loading Success",
          backgroundColor: Colors.blue,
        );
        return ModelDataFromApi;
      } else if (response.statusCode == 404) {
        Get.snackbar(
          colorText: Colors.white,
          "Massage",
          "Data Loading Failed",
          backgroundColor: Colors.red,
        );
      } else {
        Get.snackbar(
          colorText: Colors.white,
          "Massage",
          "Something Went Wrong",
          backgroundColor: Colors.red,
        );
      }
    } catch (error) {
      log("=====Error: $error");
    }
  }
}
