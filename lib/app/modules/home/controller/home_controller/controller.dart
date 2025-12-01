import 'package:child_name/app/data/model/Quote_show_model/quote_show_model.dart';
import 'package:child_name/app/data/service/api/home_quote_get/quote_api.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/appbar/Quotes_appbar/quotes_appbar.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/appbar/child_name_appbar/child_name_appbar.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/bottom_page/bottom_home/bottom_home.dart';
import 'package:get/get.dart';
import '../../view/screen/home_screen/bottom_page/bottom_0ther/BottomName.dart';

class HomeController extends GetxController {
  RxList<QuoteModel> QuoteData = <QuoteModel>[].obs;
  RxList<QuoteModel> SearchData = <QuoteModel>[].obs;
  RxBool isLoading = true.obs;
  RxInt bottomIndex = 0.obs;
  RxList bottomPage = [Bottom_Home(), Bottomname()].obs;
  RxList appbar = [QuotesAppbar(), ChildNameAppbar()].obs;

  bottomTap({required int ontapvalue}) {
    bottomIndex.value = ontapvalue;
  }

  apiCall() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 5));
    QuoteData.value = await QuoteApi().getData();
    SearchData.assignAll(QuoteData);
    isLoading.value = false;
  }

  onsearch({required String value}) {
    if (value.isNotEmpty) {
      dynamic searchText = QuoteData.where(
        (v) =>
            v.quote!.toLowerCase().contains(value.toLowerCase()) ||
            v.author!.toLowerCase().contains(value.toLowerCase()),
      ).toList();
      SearchData.assignAll(searchText);
    } else {
      SearchData.assignAll(QuoteData);
    }
  }

  @override
  void onInit() {
    apiCall();
    super.onInit();
  }
}
