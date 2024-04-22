import 'package:finalproject/Screens/reset_account/controller.dart';
import 'package:finalproject/Screens/reset_account/password_changed_succesfull.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../generated/l10n.dart';

class CreateNwePasswordScreen extends StatelessWidget {

  final PasswordController  passwordController =Get.put(PasswordController ());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10).h.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppLogoAndBackButton(),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text(S.of(context).CreateNewPassword,style: const TextStyle(
                    fontSize:28 ,fontWeight: FontWeight.w500,color: Color(0xFF111827)
                  ),),
                ],
              ),
              SizedBox(height: 10.h,),
              Text(S.of(context).SetYourNewPasswordSoYouCanLoginAndAccesJobsque,style: const TextStyle(
                fontWeight:FontWeight.w400 ,fontSize:16 ,color: Color(0xFF6B7280)
              ),),
              SizedBox(height: 30.h,),
              Obx(() => TextField(
                obscureText: passwordController.isPasswordHidden.value,
                decoration: InputDecoration(
                  hoverColor: Colors.green,
                  prefixIconColor: Colors.deepPurple,
                  prefixIcon: const Icon(Icons.lock_open_outlined
                  ),
                   suffixIconColor: Colors.red,
                  suffixIcon: GestureDetector(
                    child: Obx(()=>Icon(
                      passwordController.isPasswordHidden.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),),
                    onTap: () {
                      passwordController.togglePasswordVisibility();
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text(S.of(context).PasswordMustBeAtLeast8Characters,style: const TextStyle(color: Color(0xFF9CA3AF)),),
                ],
              ),
              SizedBox(height: 15.h,),
              Obx(() => TextField(
                obscureText: passwordController.isPasswordHidden.value,
                decoration: InputDecoration(
                    hoverColor: Colors.green,
                    prefixIconColor: Colors.deepPurple,
                    prefixIcon: const Icon(Icons.lock_open_outlined
                    ),
                    suffixIconColor: Colors.red,
                    suffixIcon: GestureDetector(
                      child: Obx(()=>Icon(
                        passwordController.isPasswordHidden.value
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),),
                      onTap: () {
                        passwordController.togglePasswordVisibility();
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),),
              SizedBox(height: 10.h),
              Row(children: [
                Text(S.of(context).BothPasswordMustMatch,style: TextStyle(color: const Color(0xFF9CA3AF)),)
              ],
              ),
              SizedBox(height: 300.h),
              nextButton(buttonText: S.of(context).RestPassword, onpressed: (){
                Get.to(()=>PasswordChangedSuccesfull());
              }),

            ],
          ),
        ),
      ),
    );
  }
}
