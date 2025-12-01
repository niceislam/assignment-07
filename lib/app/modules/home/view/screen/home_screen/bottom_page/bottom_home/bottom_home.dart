import 'package:child_name/app/modules/home/view/screen/home_screen/bottom_page/bottom_home/widget/quote_card.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/bottom_page/bottom_home/widget/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../../../../../../data/dummy_data/home_card_conColor/color.dart';
import '../../../../../controller/home_controller/controller.dart';
import '../../../../widget/custom_textfield/textfield.dart';

class Bottom_Home extends StatelessWidget {
  const Bottom_Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Column(
      children: [
        CustomTextfield(
          hintText: "Search authors or quotes",
          onchanged: (v) {
            controller.onsearch(value: v);
          },
        ),
        SizedBox(height: 10),
        Expanded(
          child: Obx(
            () => controller.isLoading == true
                ? Shimmer(
                    duration: Duration(milliseconds: 1000),
                    color: Colors.white,
                    child: ShimmerContainer(),
                  )
                : controller.SearchData.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.SearchData.length,
                    itemBuilder: (context, index) {
                      final item = controller.SearchData[index];
                      return QuoteCard(
                        iconConColor: NoteColors
                            .colorList[index % NoteColors.colorList.length],
                        title: item.quote,
                        subtitle: item.author,
                      );
                    },
                  )
                : Center(
                    child: Text(
                      "Data Not Found",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
