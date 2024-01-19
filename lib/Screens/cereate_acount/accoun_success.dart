import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart'; // Import the Get library

class AcountSuccess extends StatelessWidget {
  const AcountSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: IconButton(
                        onPressed: () {
                          Get.back(result: false);
                        }, icon: Icon(Icons.arrow_back)),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 101.0, top: 181, left: 101).w.h.w,
                child: Image.asset(
                    'images/create_acount/Success Account Ilustration.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your account has been set up!',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0XFF111827)),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 50).h.w,
                child: Text(
                  'We have customized feeds according to your preferences',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF6B7280)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height:180.h),
              nextButton(buttonText: 'GetReady', onpressed:(){})
            ],
          ),
        ),
      ),
    );
  }
}
