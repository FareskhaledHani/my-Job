import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  MainButton({Key? key,
    required this.buttonText,required this.onPressed
  }) : super(key: key);
  var  buttonText;
  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: 380.w,
      child: ElevatedButton(
        onPressed: onPressed,
        child: buttonText,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            primary: const Color(0XFF3366FF)),
      ),
    );
  }
}