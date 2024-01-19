import 'package:finalproject/Screens/apply_job/component/custem_widget.dart';
import 'package:finalproject/Screens/apply_job/drop_down_button.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ApplyJob extends StatelessWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Apply Job', style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),),
          elevation: 0,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: SingleChildScrollView(
            // child: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 25).w,
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           CustumBubbleCheck( colorBackGround:Color(0xff387FFB), value:Center(child: Icon(Icons.check,color: Colors.white,),), colorBoxBorder: Color(0xff387FFB), TextTitle: 'DioData', colorText: Color(0xff3366FF),),
            //           Expanded(child: Divider(height: 2,thickness:2,)),
            //          // SizedBox( width: 20.w,),
            //           CustumBubbleCheck(colorBackGround:Colors.white, value:Center(child: Text('2',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)),)), colorBoxBorder: Color(0xff9CA3AF), TextTitle: 'Type of work', colorText: Colors.black,),
            //           Expanded(child: Divider(height: 2,thickness:2,)),
            //          // SizedBox( width: 20.w,),
            //           CustumBubbleCheck( colorBackGround:Colors.white, value:Center(child: Text('3',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)))), colorBoxBorder: Color(0xff9CA3AF), TextTitle: ' Upload portfolio', colorText: Colors.black,),
            //           //SizedBox( width: 20.w,),
            //         ],
            //       ),
            //     ),
            //     SizedBox(height: 40.h,),
            //     Text('Biodata',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500),),
            //     SizedBox(height: 8.h,),
            //     Text('Fill in your bio data correctly'),
            //     SizedBox(height: 30.h,),
            //     Text('Full Name*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
            //     SizedBox(height: 10.h,),
            //     BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
            //       SizedBox(height: 20.h,),
            //       Text('Email*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
            //     SizedBox(height: 10.h,),
            //     BoxInSetFilter(iconSet: Icon(Icons.email_outlined), onpressed: () {  },),
            //       SizedBox(height: 20.h,),
            //       Text('No.Handphone*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
            //       SizedBox(height: 10.h,),
            //       BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
            //       SizedBox(height:110.h),
            //       nextButton(buttonText: 'Next', onpressed:(){}),
            //   ],
            // ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 25).w,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             CustumBubbleCheck(
            //               colorBackGround: Color(0xff387FFB),
            //               value: Center(child: Icon(Icons.check,
            //                 color: Colors.white,),),
            //               colorBoxBorder: Color(0xff387FFB),
            //               TextTitle: 'DioData',
            //               colorText: Color(0xff3366FF),),
            //             Expanded(child: Divider(height: 2, thickness: 2,)),
            //             CustumBubbleCheck(
            //               colorBackGround: Colors.white,
            //               value: Center(child: Text('2', style: TextStyle(
            //                   fontSize: 20, color: Color(0xff3366FF),),)),
            //               colorBoxBorder:Color(0xff387FFB),
            //               TextTitle: 'Type of work',
            //               colorText:Color(0xff3366FF),),
            //             Expanded(child: Divider(height: 2, thickness: 2,)),
            //             CustumBubbleCheck(
            //               colorBackGround: Colors.white,
            //               value: Center(child: Text('3', style: TextStyle(
            //                   fontSize: 20, color: Color(0xff9CA3AF)))),
            //               colorBoxBorder: Color(0xff9CA3AF),
            //               TextTitle: ' Upload portfolio',
            //               colorText: Colors.black,),
            //           ],
            //         ),
            //       ),
            //       SizedBox(height: 40.h,),
            //       Text('Type of work', style: TextStyle(
            //           fontSize: 25.sp, fontWeight: FontWeight.w500),),
            //       SizedBox(height: 8.h,),
            //       Text('Fill in your bio data correctly'),
            //       SizedBox(height: 30.h,),
            //       ListView.builder(itemBuilder: (BuildContext context, int index) {
            //         return Container(
            //           height: 20.h,
            //            width: MediaQuery.of(context).size.width,
            //           decoration:BoxDecoration(
            //             color: Colors.black
            //           ),
            //         );},),
            //       nextButton(buttonText: 'Next', onpressed: () {}),
            //     ],
            //   ),,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25).w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustumBubbleCheck(
                          colorBackGround: Color(0xff387FFB),
                          value: Center(child: Icon(Icons.check,
                            color: Colors.white,),),
                          colorBoxBorder: Color(0xff387FFB),
                          TextTitle: 'DioData',
                          colorText: Color(0xff3366FF),),
                        Expanded(child: Divider(height: 2, thickness: 2,)),
                        CustumBubbleCheck(
                          colorBackGround: Color(0xff387FFB),
                          value: Center(child: Icon(Icons.check,
                            color: Colors.white,),),
                          colorBoxBorder:Color(0xff387FFB),
                          TextTitle: 'Type of work',
                          colorText:Color(0xff3366FF),),
                        Expanded(child: Divider(height: 2, thickness: 2,)),
                        CustumBubbleCheck(
                          colorBackGround: Colors.white,
                          value: Center(child: Text('3', style: TextStyle(
                              fontSize: 20.sp, color: Color(0xff387FFB),))),
                          colorBoxBorder:Color(0xff387FFB),
                          TextTitle: ' Upload portfolio',
                          colorText:Color(0xff3366FF),),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h,),
                  Text('Upload portfolio', style: TextStyle(
                      fontSize: 25.sp, fontWeight: FontWeight.w500),),
                  SizedBox(height: 8.h,),
                  Text('Fill in your bio data correctly'),
                  SizedBox(height: 30.h,),
                  Text("Upload CV*",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 5.h,),
                  Container(
                    height: 70.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26,width: 2)
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text('Other File',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 230.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xffECF2FF),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    // child: DotetContainer(),
                    child: Column(
                      children: [

                      ],
                    ),
                  ),
                  SizedBox(height:70.h,),
                  nextButton(buttonText: 'Next', onpressed: () {}),
                ],
              ),


          ),
        ),
      ),
    );
  }
}

//
// child: Column
// (
// crossAxisAlignment: CrossAxisAlignment.start,children: [
// Padding
// (
// padding: const EdgeInsets.symmetric(horizontal: 25
// )
// .
// w,child: Row
// (
// mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
// CustumBubbleCheck
// (
// colorBackGround:Color
// (0xff387FFB)
// ,
// value:Center
// (
// child: Icon
// (
// Icons.check,color: Colors.white,)
// ,
// )
// ,
// colorBoxBorder: Color
// (0xff387FFB)
// ,
// TextTitle: '
// DioData
// '
// ,
// colorText: Color
// (0xff3366FF)
// ,
// )
// ,
// Expanded
// (
// child: Divider
// (
// height: 2
// ,
// thickness:2
// ,
// )
// )
// ,
// // SizedBox( width: 20.w,),
// CustumBubbleCheck
// (
// colorBackGround:Colors.white, value:Center
// (
// child: Text
// ('2
// '
// ,
// style: TextStyle
// (
// fontSize: 20
// ,
// color: Color
// (0xff9CA3AF)
// )
// ,
// )
// )
// ,
// colorBoxBorder: Color
// (0xff9CA3AF)
// ,
// TextTitle: '
// Type of work
// '
// ,
// colorText: Colors.black,)
// ,
// Expanded
// (
// child: Divider
// (
// height: 2
// ,
// thickness:2
// ,
// )
// )
// ,
// // SizedBox( width: 20.w,),
// CustumBubbleCheck
// (
// colorBackGround:Colors.white, value:Center
// (
// child: Text
// ('3
// '
// ,
// style: TextStyle
// (
// fontSize: 20
// ,
// color: Color
// (0xff9CA3AF)
// )
// )
// )
// ,
// colorBoxBorder: Color
// (0xff9CA3AF)
// ,
// TextTitle: '
//  Upload portfolio
// '
// ,
// colorText: Colors.black,)
// ,
// //SizedBox( width: 20.w,),
// ]
// ,
// )
// ,
// )
// ,
// SizedBox
// (
// height: 40
// .
// h,)
// ,
// Text
// ('Biodata
// '
// ,
// style: TextStyle
// (
// fontSize: 25
// .
// sp,fontWeight: FontWeight.w500),
// )
// ,
// SizedBox
// (
// height: 8
// .
// h,)
// ,
// Text
// ('Fill in your bio data correctly
// '
// )
// ,
// SizedBox
// (
// height: 30
// .
// h,)
// ,
// Text
// ('Full Name*
// '
// ,
// style: TextStyle
// (
// fontWeight:FontWeight.w400 ,fontSize: 20
// .
// sp),
// )
// ,
// SizedBox
// (
// height: 10
// .
// h,)
// ,
// BoxInSetFilter
// (
// iconSet: Icon
// (
// Icons.person_outline),
// onpressed: () { },
// )
// ,
// SizedBox
// (
// height: 20
// .
// h,)
// ,
// Text
// ('Email*
// '
// ,
// style: TextStyle
// (
// fontWeight:FontWeight.w400 ,fontSize: 20
// .
// sp),
// )
// ,
// SizedBox
// (
// height: 10
// .
// h,)
// ,
// BoxInSetFilter
// (
// iconSet: Icon
// (
// Icons.email_outlined),
// onpressed: () { },
// )
// ,
// SizedBox
// (
// height: 20
// .
// h,)
// ,
// Text
// ('No.Handphone*
// '
// ,
// style: TextStyle
// (
// fontWeight:FontWeight.w400 ,fontSize: 20
// .
// sp),
// )
// ,
// SizedBox
// (
// height: 10
// .
// h,)
// ,
// BoxInSetFilter
// (
// iconSet: Icon
// (
// Icons.person_outline),
// onpressed: () { },
// )
// ,
// SizedBox
// (
// height:110
// .
// h),
// nextButton
// (
// buttonText: '
// Next
// '
// ,
// onpressed:(){})
// ,
// ]
// ,
// )
// ,