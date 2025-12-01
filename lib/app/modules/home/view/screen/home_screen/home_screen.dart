import 'package:child_name/app/modules/home/controller/home_controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_textfield/textfield.dart';
import 'bottomNavbar/botton_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(49),
        child: Obx(() => controller.appbar[controller.bottomIndex.value]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Obx(() => controller.bottomPage[controller.bottomIndex.value]),
      ),
      bottomNavigationBar: Obx(
        () => BottonNavbar(
          currentIndex: controller.bottomIndex.value,
          ontap: (v) {
            controller.bottomTap(ontapvalue: v);
          },
        ),
      ),
    );
  }
}
