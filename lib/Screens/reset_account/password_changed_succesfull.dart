
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../components/custom_main_button.dart';
import '../../generated/l10n.dart';
import '../login_screen/login_screen.dart';

class PasswordChangedSuccesfull extends StatelessWidget {
  const PasswordChangedSuccesfull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10).h.w,
        child: SafeArea(
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
              Text(S.of(context).YourPasswordHasBeenChangedSuccessfullyWeWillLetYouKnowIfThereAreMoreProblemsWithYourAccount,style:  TextStyle(
                  fontWeight:FontWeight.w400 ,fontSize: 18.sp,
                  color: const Color(0xFF6B7280)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 180.h),
              Row(
                children: [
                  MainButton(buttonText: Text(S.of(context).OpenEmailApp), onPressed: (){
                    Get.to(()=>const LoginScreen());
                  }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}