
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/constants.dart';
import '../generated/l10n.dart';
import 'Custum_buble_check.dart';

class CustumMiniContainerBubleBio extends StatelessWidget {
  const CustumMiniContainerBubleBio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 75.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: KPrimaryGreyColor),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustumBubbleCheck( colorBackGround:const Color(0xff387FFB), value:const Center(child: Text('1',style: TextStyle(fontSize: 14,color: Colors.white),),), colorBoxBorder: Color(0xff387FFB),        TextTitle: S.of(context).BioData, colorText: Color(0xff3366FF), height: 30, width: 30,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(colorBackGround:Colors.white, value:const Center(child: Text('2',style: TextStyle(fontSize: 14,color: Color(0xff9CA3AF)),)), colorBoxBorder: Color(0xff9CA3AF), TextTitle: S.of(context).TypeOfWork, colorText: Colors.black,height: 30, width: 30,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.black,lineLength: 30,),
          CustumBubbleCheck( colorBackGround:Colors.white, value:const Center(child: Text('3',style: TextStyle(fontSize: 14,color: Color(0xff9CA3AF)))), colorBoxBorder: Color(0xff9CA3AF),   TextTitle: S.of(context).UploadPortfolio, colorText: Colors.black,height: 30, width: 30,),
        ],
      ),
    );
  }
}
class CustumMiniContainerBubleType extends StatelessWidget {
  const CustumMiniContainerBubleType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 75.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: KPrimaryGreyColor),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustumBubbleCheck(
            colorBackGround: const Color(0xff387FFB),
            value: const Center(child: Text('1', style: TextStyle(
              fontSize: 14, color: Colors.white,),)),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).BioData,
            colorText: const Color(0xff3366FF),
            height: 30, width: 30,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: Colors.white,
            value: const Center(child: Text('2', style: TextStyle(
              fontSize: 14, color: Color(0xff3366FF),),)),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).TypeOfWork,
            colorText: const Color(0xff3366FF),
            height: 30, width: 30,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: Colors.white,
            value: const Center(child: Text('3', style: TextStyle(
                fontSize: 14, color: Color(0xff9CA3AF)))),
            colorBoxBorder: const Color(0xff9CA3AF),
            TextTitle: S.of(context).UploadPortfolio,
            colorText: Colors.black,
            height: 30, width: 30,),
        ],
      ),
    );
  }
}
class CustumMiniContainerBubleUpload extends StatelessWidget {
  const CustumMiniContainerBubleUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 75.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: KPrimaryGreyColor),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustumBubbleCheck(
            colorBackGround: const Color(0xff387FFB),
            value: const Center(
              child: Text('1',style: TextStyle(color: Colors.white,fontSize: 14,),)
            ),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).BioData,
            colorText: const Color(0xff3366FF),
            height: 30, width: 30,
          ),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: const Color(0xff387FFB),
            value: const Center(
              child:Text('2',style: TextStyle(fontSize: 14,color: Colors.white),),
            ),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).TypeOfWork,
            colorText: const Color(0xff3366FF),
            height: 30, width: 30,
          ),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: Colors.white,
            value: Center(
                child: Text('3',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff387FFB),
                    ))),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).UploadPortfolio,
            colorText: const Color(0xff3366FF),
            height: 30, width: 30,
          ),
        ],
      ),
    );
  }
}