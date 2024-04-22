import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Components{
 List<String>? lables=['contain', 'list', 'sahlab'];
  int? counter=0;
}


class DotetContainer extends StatelessWidget {
  const DotetContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          for (int i = 0; i < 10; i++) ...[
            Container(
              height: 5.h,
              width: (i == 0 || i == 15) ? 22.w : 29.w,
              margin: EdgeInsets.only(right: i == 9 ? 0 : 10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(i == 0 ? 0 : 10),
                      bottomRight: Radius.circular(i == 9 ? 0 : 10))),
            )
          ],
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              for (int i = 0; i < 10; i++) ...[
                Container(
                  height: (i == 0 || i == 9) ? 15 : 40,
                  width: 10,
                  margin: EdgeInsets.only(bottom: i == 9 ? 0 : 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(i == 0 ? 0 : 10),
                          bottomRight:
                          Radius.circular(i == 9 ? 0 : 10))),
                )
              ],
            ],
          ),
          const Text("Photos"),
          Column(
            children: [
              for (int i = 0; i < 10; i++) ...[
                Container(
                  height: (i == 0 || i == 5) ? 10.h : 30.h,
                  width: 10,
                  margin: EdgeInsets.only(bottom: i == 9 ? 0 : 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(i == 0 ? 0 : 10),
                          bottomLeft:
                          Radius.circular(i == 9 ? 0 : 10))),
                )
              ],
            ],
          ),
        ],
      ),
      Row(
        children: [
          for (int i = 0; i < 10; i++) ...[
            Container(
              height: 10,
              width: (i == 0 || i == 9) ? 25 : 40,
              margin: EdgeInsets.only(right: i == 9 ? 0 : 10),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(i == 0 ? 0 : 10),
                      topRight: Radius.circular(i == 9 ? 0 : 10))),
            )
          ],
        ],
      ),
    ]);
  }
}