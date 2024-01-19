import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class CereateAcount extends StatelessWidget {
  final MyControoller MyControooller = Get.put(MyControoller());
  TextEditingController controller1 = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10).h.w,
          child: Column(children: [
            AppLogoAndBackButton(),
            Padding(
              padding: const EdgeInsets.only(top: 30.0).h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Cereate Account',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0).h,
              child: Row(
                children: [
                  Text(
                    'Please create an account to find your dream job'.trim(),
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                        color: Colors.blueGrey),
                  )
                ],
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0).h,
                    child: TextFormField(
                      onTap: () => MyControooller.changeButtonColor(),
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15,).h,
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(

                        hintText: 'email,',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15).h,
                    child: TextFormField(
                      obscureText: MyControooller.obscureText.value,
                      controller: _passwordController,
                      // controller: controller1,
                      decoration: InputDecoration(
                        hintText: 'password',
                        prefixIcon: Icon(
                          Icons.lock_open_rounded,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            MyControooller.toggleObscureText();
                          },
                          child: Obx(() => Icon(
                                MyControooller.obscureText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              )),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 108).h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Login'),
                  )
                ],
              ),
            ),
            Obx(
              () => ElevatedButton(
                onPressed: () {
                  String email = _emailController.text.trim();
                  String password = _passwordController.text.trim();
                  MyControooller.createAccount(email, password);
                },
                child: Text('Create account'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50.w),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: MyControooller.buttonColor.value,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20).h,
              child: OrSineWithAnAcount(),
            ),
            SighnWithGoogleAndFaceBook(),
            // Row(
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         MyControooller.signInWithGoogle();
            //         // Get.toNamed('/page2');
            //       },
            //       child: Text('Google'),
            //     ),
            //     TextButton(
            //       onPressed: () {
            //         MyControooller.signInWithFacebook();
            //       },
            //       child: Text('Facebook'),
            //     )
            //   ],
            // ),

          ]),
        ),
      ),
    ));
  }
}




