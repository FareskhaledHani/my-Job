import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/login_screen/login_screen.dart';
import 'package:finalproject/Screens/reset_account/reset_account_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  final MyControoller MyControooller = Get.put(MyControoller());

   final TextEditingController _passwordController = TextEditingController();

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
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(children: [
                    Text('Login',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 28,color: Color(0xFF111827)),),
                  ],),
                ),
                Row(children: [  Text('Please login to find your dream job',style: TextStyle(fontSize:16 ,fontWeight: FontWeight.w400,color: Color(0xFF6B7280)),),],)
              ,SizedBox(height: 30),
                TextFormField(
                  onTap: () => MyControooller.changeButtonColor(),
                  decoration: InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Icon(
                      Icons.person_outline,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 15,).h,
                  child: TextFormField(
                    obscureText: MyControooller.obscureText.value,
                    controller: _passwordController,
                    // controller: controller1,
                    decoration: InputDecoration(
                      hintText: 'password',
                      prefixIcon: Icon(
                        Icons.lock_outline,
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.check_box,color: Colors.blue),
                          Text('Remember me'),
                        ],
                      ),



                      TextButton(onPressed: (){}, child: Text('ForgetPassword ?'))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170).h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont’t have an account?',style: TextStyle(color: Color(0XFF9CA3AF)),),TextButton(onPressed: (){
                        Get.to(()=>CereateAcount());
                      }, child: Text('Register'))
                    ],
                  ),
                ),
                nextButton(buttonText: 'Login', onpressed: (){Get.to(()=>ResetScreen());}),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: OrSineWithAnAcount(),
                ),
                SighnWithGoogleAndFaceBook()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



