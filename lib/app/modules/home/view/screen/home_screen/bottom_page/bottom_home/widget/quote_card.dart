import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key, this.iconConColor, this.title, this.subtitle});
  final Color? iconConColor;
  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 20,
            bottom: 15,
          ),
          child: Row(
            spacing: 10,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 55,
                  width: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: iconConColor ?? Colors.green,
                  ),
                  child: Image.asset(
                    "assets/icon/inverted.png",
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Column(
                  spacing: 2,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      "${title ?? ""}",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      maxLines: 1,
                      "${subtitle ?? ""}",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
