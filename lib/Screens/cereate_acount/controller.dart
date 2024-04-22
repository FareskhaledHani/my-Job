import 'dart:ui';
import 'package:finalproject/Screens/cereate_acount/type_of_work.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class MyControoller extends GetxController {
 var obscureText = true.obs;
  // FirebaseAuth _auth = FirebaseAuth.instance;
  // Future<void> createAccount(String email, String password) async {
  //   try {
  //     UserCredential userCredential =
  //     await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //     // Handle success scenario or navigate to the next screen
  //     print('Account created successfully: ${userCredential.user?.uid}');
  //   } catch (e) {
  //     // Handle error scenario or display an error message
  //     print('Account creation failed: $e');
  //   }
  // }
  void toggleObscureText() {
    obscureText.toggle();
  }
  Rx<Color> buttonColor = (Color(0xFFD1D5DB)).obs;

  changeButtonColor() {
    buttonColor.value = Colors.blue;
  }
  // Future<UserCredential> signInWithGoogle() async {
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //   print(googleUser.toString()+ '<------');
  //   final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
  //
  //
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth.accessToken,
  //     idToken: googleAuth.idToken,
  //   );
  //
  //   Get.put(TybeOfWork());
  //
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }
  // Future<void> signInWithFacebook() async {
  //   final LoginResult result = await FacebookAuth.instance.login();
  //
  //   if (result.status == LoginStatus.success) {
  //     final AccessToken accessToken = result.accessToken!;
  //     // Access the user's Facebook access token and user ID
  //     print('Access Token: ${accessToken.token}');
  //     print('User ID: ${accessToken.userId}');
  //   } else {
  //     print('Facebook sign-in failed.');
  //   }
  // }

  Rx<Color> containerColor = (Color(0xFFFAFAFA)).obs;
  Rx<Color> containerColorBorder = (Color(0xFFD1D5DB)).obs;
   changeColorContainer() {
     containerColor.value = Color(0xFFD6E4FF);
     containerColorBorder.value  = Color(0xFF3366FF);
   }
   //   Rx<Color> containerColorBorder = (Color(0xFFD1D5DB)).obs;
   // changeColorBorder() {
   //   containerColor.value = Color(0xFF3366FF);

   // }

  Rx<Color> colorOffiice = (Color(0xFF091A7A).obs);
  Rx<Color> colorRemote = (Color(0xFFF4F4F5).obs);

  changeColorOffice(){
      colorOffiice.value = Color(0xFFF4F4F5);
      colorRemote.value = Color(0xFF091A7A);
    }
   changeColorRemote(){
      colorOffiice.value=Color(0xFF091A7A);
      colorRemote.value=Color(0xFFF4F4F5);
   }
  }
