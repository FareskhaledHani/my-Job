import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Screens/apply_job/component/custem_widget.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/slider_screen/constan.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ApplyJob extends StatelessWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustumBubbleCheck( colorBackGround:Color(0xff387FFB), value:Center(child: Icon(Icons.check,color: Colors.white,),), colorBoxBorder: Color(0xff387FFB), TextTitle: 'DioData', colorText: Color(0xff3366FF),),
            Expanded(child: Divider(height: 2,thickness:2,)),
            SizedBox( width: 20.w,),
            CustumBubbleCheck(colorBackGround:Colors.white, value:Center(child: Text('2',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)),)), colorBoxBorder: Color(0xff9CA3AF), TextTitle: 'Type of work', colorText: Colors.black,),
            Expanded(child: Divider(thickness:3,indent: 20,endIndent: 20,)),
            SizedBox( width: 20.w,),
            CustumBubbleCheck( colorBackGround:Colors.white, value:Center(child: Text('3',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)))), colorBoxBorder: Color(0xff9CA3AF), TextTitle: ' Upload portfolio', colorText: Colors.black,),
            SizedBox( width: 20.w,),
          ],
        ),
        SizedBox(height: 40.h,),
        Text('Biodata',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500),),
        SizedBox(height: 8.h,),
        Text('Fill in your bio data correctly'),
        SizedBox(height: 30.h,),
        Text('Full Name*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
        SizedBox(height: 10.h,),
        BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
        SizedBox(height: 20.h,),
        Text('Email*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
        SizedBox(height: 10.h,),
        BoxInSetFilter(iconSet: Icon(Icons.email_outlined), onpressed: () {  },),
        SizedBox(height: 20.h,),
        Text('No.Handphone*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
        SizedBox(height: 10.h,),
        BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
        SizedBox(height:110.h),
        nextButton(buttonText: 'Next', onpressed:(){ }),
      ],
    );
  }
}
// final List<Widget> contents = [
//   Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Row(
//         children: [
//           CustumBubbleCheck( colorBackGround:Color(0xff387FFB), value:Center(child: Icon(Icons.check,color: Colors.white,),), colorBoxBorder: Color(0xff387FFB), TextTitle: 'DioData', colorText: Color(0xff3366FF),),
//           Expanded(child: Divider(height: 2,thickness:2,)),
//           SizedBox( width: 20.w,),
//           CustumBubbleCheck(colorBackGround:Colors.white, value:Center(child: Text('2',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)),)), colorBoxBorder: Color(0xff9CA3AF), TextTitle: 'Type of work', colorText: Colors.black,),
//           Expanded(child: Divider(thickness:3,indent: 20,endIndent: 20,)),
//           SizedBox( width: 20.w,),
//           CustumBubbleCheck( colorBackGround:Colors.white, value:Center(child: Text('3',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)))), colorBoxBorder: Color(0xff9CA3AF), TextTitle: ' Upload portfolio', colorText: Colors.black,),
//           SizedBox( width: 20.w,),
//         ],
//       ),
//       SizedBox(height: 40.h,),
//       Text('Biodata',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500),),
//       SizedBox(height: 8.h,),
//       Text('Fill in your bio data correctly'),
//       SizedBox(height: 30.h,),
//       Text('Full Name*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
//       SizedBox(height: 20.h,),
//       Text('Email*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.email_outlined), onpressed: () {  },),
//       SizedBox(height: 20.h,),
//       Text('No.Handphone*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
//       SizedBox(height:110.h),
//       nextButton(buttonText: 'Next', onpressed:(){ }),
//     ],
//   ),
//   Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Row(
//         children: [
//           CustumBubbleCheck( colorBackGround:Color(0xff387FFB), value:Center(child: Icon(Icons.check,color: Colors.white,),), colorBoxBorder: Color(0xff387FFB), TextTitle: 'DioData', colorText: Color(0xff3366FF),),
//           Expanded(child: Divider(height: 2,thickness:2,)),
//           SizedBox( width: 20.w,),
//           CustumBubbleCheck(colorBackGround:Colors.white, value:Center(child: Text('2',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)),)), colorBoxBorder: Color(0xff9CA3AF), TextTitle: 'Type of work', colorText: Colors.black,),
//           Expanded(child: Divider(thickness:3,indent: 20,endIndent: 20,)),
//           SizedBox( width: 20.w,),
//           CustumBubbleCheck( colorBackGround:Colors.white, value:Center(child: Text('3',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)))), colorBoxBorder: Color(0xff9CA3AF), TextTitle: ' Upload portfolio', colorText: Colors.black,),
//           SizedBox( width: 20.w,),
//         ],
//       ),
//       SizedBox(height: 40.h,),
//       Text('Biodata',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500),),
//       SizedBox(height: 8.h,),
//       Text('Fill in your bio data correctly'),
//       SizedBox(height: 30.h,),
//       Text('Full Name*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
//       SizedBox(height: 20.h,),
//       Text('Email*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.email_outlined), onpressed: () {  },),
//       SizedBox(height: 20.h,),
//       Text('No.Handphone*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
//       SizedBox(height:110.h),
//       nextButton(buttonText: 'Next', onpressed:(){ }),
//     ],
//   ),
//   Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Row(
//         children: [
//           CustumBubbleCheck( colorBackGround:Color(0xff387FFB), value:Center(child: Icon(Icons.check,color: Colors.white,),), colorBoxBorder: Color(0xff387FFB), TextTitle: 'DioData', colorText: Color(0xff3366FF),),
//           Expanded(child: Divider(height: 2,thickness:2,)),
//           SizedBox( width: 20.w,),
//           CustumBubbleCheck(colorBackGround:Colors.white, value:Center(child: Text('2',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)),)), colorBoxBorder: Color(0xff9CA3AF), TextTitle: 'Type of work', colorText: Colors.black,),
//           Expanded(child: Divider(thickness:3,indent: 20,endIndent: 20,)),
//           SizedBox( width: 20.w,),
//           CustumBubbleCheck( colorBackGround:Colors.white, value:Center(child: Text('3',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)))), colorBoxBorder: Color(0xff9CA3AF), TextTitle: ' Upload portfolio', colorText: Colors.black,),
//           SizedBox( width: 20.w,),
//         ],
//       ),
//       SizedBox(height: 40.h,),
//       Text('Biodata',style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500),),
//       SizedBox(height: 8.h,),
//       Text('Fill in your bio data correctly'),
//       SizedBox(height: 30.h,),
//       Text('Full Name*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
//       SizedBox(height: 20.h,),
//       Text('Email*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.email_outlined), onpressed: () {  },),
//       SizedBox(height: 20.h,),
//       Text('No.Handphone*',style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
//       SizedBox(height: 10.h,),
//       BoxInSetFilter(iconSet: Icon(Icons.person_outline), onpressed: () {  },),
//       SizedBox(height:110.h),
//       nextButton(buttonText: 'Next', onpressed:(){ }),
//     ],
//   ),
// ];




