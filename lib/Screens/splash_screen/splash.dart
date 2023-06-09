
import 'package:finalproject/Screens/slider_screen/slider_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 3;
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
        //pushReplacement = replacing the route so that
        //splash screen won't show on back button press
        //navigation to Home page.
          builder: (context){
            return HomePage();
          }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(child: Image.asset('images/one/Blur.png')),
            Center(child: Image.asset('images/one/Logo.png')),
          ],
        ),
      ),
    );
  }
}
