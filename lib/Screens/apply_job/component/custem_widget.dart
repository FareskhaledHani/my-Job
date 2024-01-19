import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustumBubbleCheck extends StatelessWidget {
   CustumBubbleCheck({
    Key? key,required this.colorBoxBorder, required this.colorBackGround, required this.value,required this.TextTitle,required this.colorText
  }) : super(key: key);
   Color colorBoxBorder;
  Color colorBackGround;
  var value;
  String TextTitle;
  Color colorText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          width: 50.w,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            color: colorBackGround,
            border: Border.all(width: 1,color:colorBoxBorder,),
          ),
          child:Center(
            child: Container(
              height: 60.h,
              width: 60.w,
              child:value,
            ),
          ),
        ),
        Text(TextTitle,style: TextStyle(color: colorText,fontSize: 12.sp,fontWeight: FontWeight.w400),),
      ],
    );
  }
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