import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, this.controller, this.onchanged});
  final TextEditingController? controller;
  final ValueChanged? onchanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onchanged,
      controller: controller,
      cursorColor: Colors.black,
      cursorHeight: 22,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ),
        hintText: "Search authors or quotes",
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search_outlined, color: Colors.grey),
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
