import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChangeColorContainer extends StatelessWidget {
  const CustomChangeColorContainer({
    Key? key, required this.containerColor, required this.borderContainerColor, required this.textColor, required this.OnTap, required this.text,
  }) : super(key: key);
  final Color containerColor;
  final Color borderContainerColor;
  final Color textColor;
  final VoidCallback OnTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        height: 35.h,
        decoration: BoxDecoration(
            color: containerColor,
            // (trueOneButton==false)? Colors.white:const Color(0xffD6E4FF),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color:borderContainerColor,
              //(trueOneButton==false)? const Color(0xffD1D5DB):const Color(0xff3366FF),
            )),
        child: Center(child: Text(text
          // 'remote'
          ,style: TextStyle(fontSize:18.sp ,color:textColor
            // (trueOneButton==false)? const Color(0xffD1D5DB):const Color(0xff3366FF)
          )
          ,)),
      ),
    );
  }
}