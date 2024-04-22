import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/two-step_verificaton_screen/tow-step_verification_avaliable_method.dart';
import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../slider_screen/extract_widget.dart';
import 'component/custum_widget_row_verfication.dart';

class TwoStepVerification extends StatefulWidget {
  const TwoStepVerification({Key? key}) : super(key: key);

  @override
  State<TwoStepVerification> createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: 'Two-step verfication',
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 66.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: KPrimaryGreyColor)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: CustumSubTitle_500_14_grey(
                          subTitle:
                              'Secure your account with two-step verification'),
                    ),
                    SizedBox(width: 80.w),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange,
                        onToggle: (val) {
                          setState(() {
                            onChange = val;
                          });
                        }),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RowListTileTwoStep(icon: Icons.lock_outlined, title: 'Two-step verification provides additional security by asking for a verification code every time you log in on another device.',),
            SizedBox(height: 20,),
            RowListTileTwoStep(icon: FontAwesomeIcons.hardDrive, title: 'Adding a phone number or using an authenticator will help keep your account safe from harm.',),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: nextButton(
                  buttonText: 'Next',
                  onpressed: () {Get.to(()=>AddingVerifivationMethod()); },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


