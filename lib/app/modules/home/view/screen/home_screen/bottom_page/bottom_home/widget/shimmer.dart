import 'package:flutter/material.dart';

class ShimmerContainer extends StatelessWidget {
  const ShimmerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
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
                        color: Colors.grey.shade200,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Column(
                      spacing: 4,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: MediaQuery.sizeOf(context).width,
                          color: Colors.grey.shade200,
                        ),
                        Container(
                          height: 20,
                          width: MediaQuery.sizeOf(context).width,
                          color: Colors.grey.shade200,
                        ),
                        SizedBox(height: 2),
                        Container(
                          height: 20,
                          width: MediaQuery.sizeOf(context).width / 3,
                          color: Colors.grey.shade200,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
