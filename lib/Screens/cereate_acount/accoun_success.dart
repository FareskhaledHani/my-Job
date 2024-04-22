import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class AcountSuccess extends StatelessWidget {
  const AcountSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar( foregroundColor: Colors.black,

          elevation: 0,
          backgroundColor: Colors.white,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 140.h),
                  Image.asset(
                      'images/create_acount/Success Account Ilustration.png'),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    S.of(context).YourAccountHasBeenSetUp,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color(0XFF111827)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 50).h.w,
                    child: Text(
                    S.of(context).WeHaveCustomizedFeedsAccordingToYourPreferences,
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF6B7280)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height:245.h),
                   nextButton(buttonText: S.of(context).GetStarted, onpressed:(){})
                ],
              ),
        ),
      ),
    );
  }
}
