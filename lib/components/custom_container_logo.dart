import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonSinWith extends StatelessWidget {

  const ButtonSinWith({

    required this.textIcon,required this.image,required this.onPressed
  });
  final String? textIcon;
  final String? image;
  final Function ?onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed!(),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.sp),
            border: Border.all(width: 2.w,color: const Color(0xFFD1D5DB))
        ),
        width: 154.w,
        height: 46.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image!),
            SizedBox(width: 10.w,),
            Text(textIcon!),
          ],
        ),

      ),
    );
  }
}