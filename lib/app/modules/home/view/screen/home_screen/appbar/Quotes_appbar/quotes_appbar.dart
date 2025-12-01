import 'package:flutter/material.dart';

class QuotesAppbar extends StatelessWidget {
  const QuotesAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
