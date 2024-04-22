import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomMiniFilterButton extends StatelessWidget {
  const CustomMiniFilterButton({

    Key? key, required this.onTap, required this.colorButton, required this.colorIcon, required this.colorText, required this.colorBorder, required this.titleButton,
  }) : super(key: key);
  final VoidCallback onTap;
  final Color colorButton;
  final Color colorIcon;
  final Color colorText;
  final Color colorBorder;
  final String titleButton;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: 130.w,
        decoration: BoxDecoration(
            color: colorButton,
            borderRadius:
            BorderRadius.circular(24.sp),
            border: Border.all(width: 1,color: colorBorder)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(titleButton,style: TextStyle(fontSize: 18.sp,color: colorText),),
            Icon(FontAwesomeIcons.angleDown,size:20.sp,color: colorIcon,)
          ],
        ),

      ),
    );
  }
}