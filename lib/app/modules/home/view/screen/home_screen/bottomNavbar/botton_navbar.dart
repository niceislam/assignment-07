import 'package:flutter/material.dart';

class BottonNavbar extends StatelessWidget {
  const BottonNavbar({super.key, this.currentIndex, this.ontap});
  final int? currentIndex;
  final ValueChanged? ontap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      onTap: ontap,
      currentIndex: currentIndex ?? 0,
      selectedFontSize: 18,
      selectedItemColor: Colors.black,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Name",
        ),
      ],
    );
  }
}
