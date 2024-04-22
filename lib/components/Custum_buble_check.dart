import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustumBubbleCheck extends StatelessWidget {
  CustumBubbleCheck({
    Key? key,required this.colorBoxBorder, required this.colorBackGround, required this.value,required this.TextTitle,required this.colorText,required this.height,required this.width
  }) : super(key: key);
  Color colorBoxBorder;
  Color colorBackGround;
  var value;
  String TextTitle;
  Color colorText;
  double height;
  double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height.h,
          width: width.w,
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