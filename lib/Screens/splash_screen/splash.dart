import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/slider_screen/slider_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../core/cash_helper.dart';
import '../apply_job/screen_apply_job/tybe_of_work_screen.dart';
import '../bottom_nav_bar/views/bottom_nav_bar_view.dart';
import '../hope_work_screen/screen/type_of_work.dart';
import '../login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: MediaQuery.of(context).size.width,
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      splash: Center(
        child: Stack(
          children: [
            Center(child: Image.asset('images/one/Blur.png')),
            Center(child: Image.asset('images/one/Logo.png')),
          ],
        ),
      ),
      nextScreen: CreateAccount(), // Call the custom function to determine the next screen
    );
  }

  // Widget _getNextScreen() {
  //   // Check your conditions to determine the next screen
  //   if (CacheHelper.getToken().isNotEmpty) {
  //     // If token is present, return BottomNavBar
  //     return const BottomNavBar();
  //   } else if (CacheHelper.getToken().isEmpty && CacheHelper.getFirstTime().isNotEmpty) {
  //     // If token is empty and it's not the first time, return LoginScreen
  //     return const LoginScreen();
  //   } else {
  //     // Otherwise, return SplashScreen
  //     return SliderScreens();
  //   }
  // }
}

//if( CacheHelper.getToken().isNotEmpty){BottomNavBar()}else if ( CacheHelper.getToken().isEmpty&&CacheHelper.getFirstTime.isNotEmpty){LoginScreen()}else SliderScreens()