import 'dart:developer';

import 'package:child_name/app/data/model/childName_model/child_name.dart';
import 'package:child_name/app/data/service/api/Child_name/child_name_api.dart';
import 'package:get/get.dart';

class NameController extends GetxController {
  RxList<ChildNameModel> finalData = <ChildNameModel>[].obs;
  RxList<ChildNameModel> searchData = <ChildNameModel>[].obs;
  RxBool isLoading = true.obs;

  onsearch({required String seaechValue}) {
    if (seaechValue.isNotEmpty) {
      dynamic searchv = finalData
          .where(
            (v) =>
                v.nameBn!.toLowerCase().contains(seaechValue.toLowerCase()) ||
                v.nameEn!.toLowerCase().contains(seaechValue.toLowerCase()) ||
                v.religion!.toLowerCase().contains(seaechValue.toLowerCase()) ||
                v.gender!.toLowerCase().contains(seaechValue.toLowerCase()),
          )
          .toList();
      searchData.assignAll(searchv);
    } else {
      searchData.assignAll(finalData);
    }
  }

  apiCall() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 3));
    finalData.value = await ChildNameApi().getData();
    searchData.assignAll(finalData);
    isLoading.value = false;
  }

  @override
  void onInit() {
    apiCall();
    super.onInit();
  }
}
