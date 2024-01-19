import 'package:finalproject/Screens/reset_account/controller.dart';
import 'package:finalproject/Screens/reset_account/password_changed_succesfull.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

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
              AppLogoAndBackButton(),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text('Create new password',style: TextStyle(
                    fontSize:28 ,fontWeight: FontWeight.w500,color: Color(0xFF111827)
                  ),),
                ],
              ),
              SizedBox(height: 10.h,),
              Text('Set your new password so you can login and acces Jobsque',style: TextStyle(
                fontWeight:FontWeight.w400 ,fontSize:16 ,color: Color(0xFF6B7280)
              ),),
              SizedBox(height: 30.h,),
              Obx(() => TextField(
                obscureText: passwordController.isPasswordHidden.value,
                decoration: InputDecoration(
                  hoverColor: Colors.green,
                  prefixIconColor: Colors.deepPurple,
                  prefixIcon: Icon(Icons.lock_open_outlined
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
                  Text('Password must be at least 8 characters',style: TextStyle(color: Color(0xFF9CA3AF)),),
                ],
              ),
              SizedBox(height: 15.h,),
              Obx(() => TextField(
                obscureText: passwordController.isPasswordHidden.value,
                decoration: InputDecoration(
                    hoverColor: Colors.green,
                    prefixIconColor: Colors.deepPurple,
                    prefixIcon: Icon(Icons.lock_open_outlined
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
                Text('Both password must match',style: TextStyle(color: Color(0xFF9CA3AF)),)
              ],
              ),
              SizedBox(height: 300.h),
              nextButton(buttonText: 'Rest Password', onpressed: (){
                Get.to(()=>PasswordChangedSuccesfull());
              }),

            ],
          ),
        ),
      ),
    );
  }
}
