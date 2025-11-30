import 'package:child_name/app/data/dummy_data/home_card_conColor/color.dart';
import 'package:child_name/app/modules/home/controller/home_controller/controller.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/widget/quote_card.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/widget/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import '../../widget/custom_textfield/textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      appBar: AppBar(
        backgroundColor: Color(0xff23B573),
        centerTitle: true,
        title: Text(
          "Motivation Quotes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            CustomTextfield(
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
        ),
      ),
    );
  }
}
