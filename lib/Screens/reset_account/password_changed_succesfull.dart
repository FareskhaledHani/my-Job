import 'package:finalproject/Screens/home_screen/home_screen/home_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../components/custom_main_button.dart';
import '../../generated/l10n.dart';

class PasswordChangedSuccesfull extends StatelessWidget {
  const PasswordChangedSuccesfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10).h.w,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:200.h),
                Center(child: Image.asset('images/create_acount/Password Succesfully Ilustration.png')),
                SizedBox(height: 15.h,),
                Text(S.of(context).PasswordChangedSuccessfully,style: const TextStyle(
                    fontWeight:FontWeight.w500 ,fontSize: 24,
                    color: Color(0xFF111827)
                ),textAlign:TextAlign.center,),
                SizedBox(height: 15.h),
                Text(S.of(context).YourPasswordHasBeenChangedSuccessfullyWeWillLetYouKnowIfThereAreMoreProblemsWithYourAccount,style: const TextStyle(
                    fontWeight:FontWeight.w400 ,fontSize: 16,
                    color: Color(0xFF6B7280)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 250.h),
                Row(
                  children: [
                    MainButton(buttonText: Text(S.of(context).OpenEmailApp), onPressed: (){
                      Get.to(()=>HomeScreen());
                    }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}