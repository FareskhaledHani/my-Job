import 'dart:ui';

import 'package:finalproject/Screens/cereate_acount/type_of_work.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyControoller extends GetxController {
  var obscureText = true.obs;

  void toggleObscureText() {
    obscureText.toggle();
  }
  Rx<Color> buttonColor = (Color(0xFFD1D5DB)).obs;

  changeButtonColor() {
    buttonColor.value = Colors.blue;
  }
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    Get.put(TybeOfWork());

    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
  Rx<Color> containerColor = (Color(0xFFFAFAFA)).obs;
  Rx<Color> containerColorBorder = (Color(0xFFD1D5DB)).obs;
   changeColorContainer() {
     containerColor.value = Color(0xFFD6E4FF);
     containerColorBorder.value = Color(0xFF3366FF);
   }
   //   Rx<Color> containerColorBorder = (Color(0xFFD1D5DB)).obs;
   // changeColorBorder() {
   //   containerColor.value = Color(0xFF3366FF);

   // }
}