import 'package:flutter/material.dart';

class ChildNameAppbar extends StatelessWidget {
  const ChildNameAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      backgroundColor: Color(0xffECECEC),
      centerTitle: true,
      title: Text(
        "Baby Names",
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
