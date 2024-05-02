import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/l10n.dart';
import 'Custum_buble_check.dart';

class CustumContainerBubleBio extends StatelessWidget {
  const CustumContainerBubleBio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustumBubbleCheck( colorBackGround:const Color(0xff387FFB), value:const Center(child: Icon(Icons.check,color: Colors.white,),), colorBoxBorder: Color(0xff387FFB), TextTitle: 'DioData', colorText: Color(0xff3366FF), height: 50, width: 50,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          // SizedBox( width: 20.w,),
          CustumBubbleCheck(colorBackGround:Colors.white, value:const Center(child: Text('2',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)),)), colorBoxBorder: Color(0xff9CA3AF), TextTitle: 'Type of work', colorText: Colors.black,height: 50, width: 50,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          // SizedBox( width: 20.w,),
          CustumBubbleCheck( colorBackGround:Colors.white, value:const Center(child: Text('3',style: TextStyle(fontSize: 20,color: Color(0xff9CA3AF)))), colorBoxBorder: Color(0xff9CA3AF), TextTitle: ' Upload portfolio', colorText: Colors.black,height: 50, width: 50,),
          //SizedBox( width: 20.w,),
        ],
      ),
    );
  }
}
class CustumContainerBubleType extends StatelessWidget {
  const CustumContainerBubleType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustumBubbleCheck(
            colorBackGround: const Color(0xff387FFB),
            value: const Center(child: Icon(Icons.check,
              color: Colors.white,),),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).BioData,
            colorText: const Color(0xff3366FF),
            height: 50, width: 50,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: Colors.white,
            value: const Center(child: Text('2', style: TextStyle(
              fontSize: 20, color: Color(0xff3366FF),),)),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).TypeOfWork,
            colorText: const Color(0xff3366FF),
            height: 50, width: 50,),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: Colors.white,
            value: const Center(child: Text('3', style: TextStyle(
                fontSize: 20, color: Color(0xff9CA3AF)))),
            colorBoxBorder: const Color(0xff9CA3AF),
            TextTitle: S.of(context).UploadPortfolio,
            colorText: Colors.black,
            height: 50, width: 50,),
        ],
      ),
    );
  }
}

class CustumContainerBubleUpload extends StatelessWidget {
  const CustumContainerBubleUpload({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25).w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustumBubbleCheck(
            colorBackGround: const Color(0xff387FFB),
            value: const Center(
              child: Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).BioData,
            colorText: const Color(0xff3366FF),
            height: 50, width: 50,
          ),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: const Color(0xff387FFB),
            value: const Center(
              child: Icon(
                Icons.check,
                color: Colors.white,

              ),
            ),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).TypeOfWork,
            colorText: const Color(0xff3366FF),
            height: 50, width: 50,
          ),
          const DottedLine(lineThickness: 1,dashLength: 2,dashColor:Colors.blue,lineLength: 30,),
          CustumBubbleCheck(
            colorBackGround: Colors.white,
            value: Center(
                child: Text('3',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xff387FFB),
                    ))),
            colorBoxBorder: const Color(0xff387FFB),
            TextTitle: S.of(context).UploadPortfolio,
            colorText: const Color(0xff3366FF),
            height: 50, width: 50,
          ),
        ],
      ),
    );
  }
}