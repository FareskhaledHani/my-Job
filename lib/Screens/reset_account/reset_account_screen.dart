import 'package:finalproject/Screens/login_screen/login_screen.dart';
import 'package:finalproject/Screens/reset_account/check_email_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../components/custom_main_button.dart';
import '../../components/custum_email_text_field.dart';
import '../../generated/l10n.dart';

class ResetScreen extends StatelessWidget {
  const ResetScreen({Key? key}) : super(key: key);


 // final PasswordController controllerReset =Get.put(PasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppLogoAndBackButton(),
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
                        S.of(context).RestPassword,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 28),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 25.0.h),
                child: Text(
                 S.of(context).EnterTheEmailAddressYouUsedWhenYouJoinedAndWellSendYouInstructionsToResetYourPassword,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF6B7280)),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 30.0.h),
                child: EmailCustumTextField(icon: Icons.email_outlined, onPressed: (String value) {  }, hint: S.of(context).EnterYourEmail,),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 320.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).YouRememberYourPassword,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9CA3AF)),
                    ),
                    TextButton(onPressed: () {
                      Get.to(()=>const LoginScreen());
                    }, child: Text(S.of(context).Login)),
                  ],
                ),
              ),
              MainButton(buttonText:Text( S.of(context).RequestPasswordReset), onPressed: () {
                Get.to(()=>const CheckEmailScreen());
              },)
            ],
          ),
        ),
      ),
    );
  }
}


