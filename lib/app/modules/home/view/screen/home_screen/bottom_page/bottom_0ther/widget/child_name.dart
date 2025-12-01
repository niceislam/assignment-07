import 'package:flutter/material.dart';

class ChildNameList extends StatelessWidget {
  const ChildNameList({
    super.key,
    this.nameBn,
    this.nameEn,
    this.meaning,
    this.gender, this.religion,
  });
  final String? nameBn;
  final String? nameEn;
  final String? meaning;
  final String? gender;
  final String? religion;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.symmetric(vertical: 7),
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 1,
                    "${nameBn ?? ""}",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "myFont",
                      letterSpacing: 1,
                      fontSize: 32,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    maxLines: 1,
                    "*${nameEn ?? ""}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1,
                      fontSize: 23,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Container(
                height: 33,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: gender == "Boy"
                      ? Color(0xff0F7FDD)
                      : Color(0xffCF07CC),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 2,
                  children: [
                    gender == "Boy"
                        ? Image.asset(
                            height: 25,
                            width: 25,
                            "assets/icon/boyIcon.png",
                            color: Colors.white,
                          )
                        : Image.asset(
                            height: 25,
                            width: 25,
                            "assets/icon/girlIcon.png",
                            color: Colors.white,
                          ),
                    Text(
                      "${gender}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Expanded(
                child: Text(
                  maxLines: 1,
                  "অর্থ: ${meaning ?? ""}",
                  style: TextStyle(
                    color: Colors.black.withAlpha(150),
                    fontSize: 20,
                    fontFamily: "myFont",
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                spacing: 5,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff0F7FDD),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.language,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  Text(
                    "${religion}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
