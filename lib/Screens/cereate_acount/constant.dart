import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class hope_work_box extends StatelessWidget {
  hope_work_box({
    Key? key,required this.topp1,required this.photo1,required this.textPhoto1,required this.Color1,required this.Color3,
  }) : super(key: key,);
  double topp1;
  String photo1;
  String textPhoto1;
 Rx<Color>  Color1;
 Rx<Color>  Color3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:  EdgeInsets.only(top:topp1).h,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color:Color3.value, // sets the border color to red
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(15),
              color:Color1.value,
            ),
            width: 186.w,
            height: 125.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 14, top: 20).w.h,
                  child:
                  Image.asset(photo1),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 14, top: 16),
                  child: Text(
                    textPhoto1,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(top: topp2, left: 15).h.w,
        //   child: Container(
        //     decoration: BoxDecoration(
        //       border: Border.all(
        //         color: Color4.value, // sets the border color to red
        //         width: 2.0,
        //       ),
        //       borderRadius: BorderRadius.circular(15),
        //       color: Color2.value,
        //     ),
        //     width: 186.w,
        //     height: 125.h,
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Padding(
        //           padding:
        //           const EdgeInsets.only(left: 14, top: 20).w.h,
        //           child:
        //           Image.asset(photo2),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(left: 14, top: 16).w.h,
        //           child: Text(
        //             textPhoto2,
        //             style: TextStyle(
        //                 fontSize: 16, fontWeight: FontWeight.w400),
        //           ),
        //         )

      ],




    );
  }
}
