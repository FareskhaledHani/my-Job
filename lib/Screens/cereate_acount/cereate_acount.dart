import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CereateAcount extends StatelessWidget {
  final MyControoller MyControooller = Get.put(MyControoller());
  TextEditingController controller1 = TextEditingController();
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.keyboard_backspace)),
              Padding(
                padding: const EdgeInsets.only(right: 20).w,
                child: Image.asset('images/slider/J BSQUE .jpg'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30).h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24).w,
                  child: Text(
                    'Cereate Account',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 24, top: 8, bottom: 40).w.h.h,
                child: Text(
                  'Please create an account to find your dream job',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.blueGrey),
                ),
              )
            ],
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24).w,
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
                      const EdgeInsets.only(top: 10, left: 24, right: 24).h.w.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'email',
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
                      const EdgeInsets.only(top: 10, left: 24, right: 24).h.w.w,
                  child: TextFormField(
                    obscureText: MyControooller.obscureText.value,
                    controller: controller1,
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
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 24).w,
            child: Obx(
              () => ElevatedButton(
                onPressed: () {},
                child: Text('Create account'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50.w),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: MyControooller.buttonColor.value,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20).h,
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 36,
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Or Sign up With Account',
                  style: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.bold),
                ),
                Expanded(
                    child: Divider(
                  color: Colors.grey[400],
                  height: 36,
                  thickness: 2,
                  endIndent: 20,
                  indent: 20,
                ))
              ],
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  MyControooller.signInWithGoogle();
                },
                child: Text('Google'),
              ),
              TextButton(
                onPressed: () {

                },
                child: Text('Facebook'),
              )
            ],
          )
        ]),
      ),
    ));
  }


}

