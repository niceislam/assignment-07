import 'package:child_name/app/modules/home/controller/home_controller/Name_controller.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/bottom_page/bottom_0ther/widget/childName_shimmer.dart';
import 'package:child_name/app/modules/home/view/screen/home_screen/bottom_page/bottom_0ther/widget/child_name.dart';
import 'package:child_name/app/modules/home/view/widget/custom_textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class Bottomname extends StatelessWidget {
  const Bottomname({super.key});

  @override
  Widget build(BuildContext context) {
    NameController controller = Get.put(NameController());
    return Column(
      children: [
        CustomTextfield(
          onchanged: (value) {
            controller.onsearch(seaechValue: value);
          },
          hintText: "Search খুজুন...",
          sufIcon: Icon(Icons.search_outlined, color: Colors.grey),
        ),
        SizedBox(height: 10),
        Expanded(
          child: Obx(
            () => controller.isLoading == true
                ? Shimmer(
                    color: Colors.white,
                    duration: Duration(milliseconds: 1000),
                    child: ChildnameShimmer(),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.searchData.length,
                    itemBuilder: (context, index) {
                      final item = controller.searchData[index];
                      return ChildNameList(
                        gender: "${item.gender}",
                        religion: "${item.religion}",
                        nameBn: "${item.nameBn}",
                        nameEn: "${item.nameEn}",
                        meaning: "${item.bnMeaning}",
                      );
                    },
                  ),
          ),
        ),
      ],
    );
  }
}
