import 'package:finalproject/Screens/login_screen/login_screen.dart';
import 'package:finalproject/Screens/reset_account/check_email_screen.dart';
import 'package:finalproject/Screens/reset_account/controller.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResetScreen extends StatelessWidget {

 // final PasswordController controllerReset =Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10).h.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppLogoAndBackButton(),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     IconButton(
                //         onPressed: () {
                //           Get.back();
                //         },
                //         icon: Icon(Icons.keyboard_backspace)),
                //     Padding(
                //       padding: const EdgeInsets.only().w,
                //       child: Image.asset('images/slider/J BSQUE .jpg'),
                //     ),
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 30).h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0).w,
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 28),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0).h,
                  child: Text(
                    'Enter the email address you used when you       joined and we’ll send you instructions to reset       your password.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Color(0xFF6B7280)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hoverColor: Colors.red,
                        fillColor: Colors.amber,
                        focusColor: Colors.deepPurple,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        hintText: 'Enter your Email...'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 350.0).h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You remember your password',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF9CA3AF)),
                      ),
                      TextButton(onPressed: () {
                        Get.to(()=>LoginScreen());
                      }, child: Text('Login')),
                    ],
                  ),
                ),
                nextButton(buttonText: 'Request password reset', onpressed: () {
                  Get.to(()=>CheckEmailScreen());
                },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
