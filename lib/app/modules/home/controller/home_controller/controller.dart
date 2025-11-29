import 'dart:developer';

import 'package:child_name/app/data/model/Quote_show_model/quote_show_model.dart';
import 'package:child_name/app/data/service/api/home_quote_get/quote_api.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<QuoteModel> QuoteData = <QuoteModel>[].obs;
  RxBool isLoading = true.obs;

  apiCall() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 10));
    log("===============6666");
    dynamic apiquote = await QuoteApi().getData();
    QuoteData.value = apiquote;
    isLoading.value = false;
    log("===============5555");
  }

  @override
  void onInit() {
    apiCall();
    super.onInit();
  }
}
