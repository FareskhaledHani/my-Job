import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/two-step_verificaton_screen/two_step_add_phone_number.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../components/custum_subtitle_text.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../slider_screen/extract_widget.dart';

class AddingVerifivationMethod extends StatefulWidget {
  const AddingVerifivationMethod({Key? key}) : super(key: key);

  @override
  State<AddingVerifivationMethod> createState() => _AddingVerifivationMethodState();
}
 bool onChange = false;

class _AddingVerifivationMethodState extends State<AddingVerifivationMethod> {
  String valueChoose='Telephone number (SMS)';
  List listItem=['Telephone number (SMS)','email'];

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
                          'Secure your account with two-step verification,',),
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
            CustumTitle_400_14_black(title: 'Select a verification method'),
            SizedBox(height: 10.h,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2,color: KPrimaryGreyColor)
              ),
              child: DropdownButton(
                underline: SizedBox(),
                isExpanded: true,
                  value: valueChoose,
                  items:listItem.map((valueItem) {
                    return DropdownMenuItem(
                      value: valueItem,
                      child: CustumTitle_500_12_black(title: valueItem,),
                    );
                  } ).toList() ,
                  onChanged: ( newValue){
                    return setState((){
                      valueChoose=newValue.toString();
                    });
              }),
            ),
            SizedBox(height: 10,),
            CustumSubTitle_400_12_grey(subTitle: 'Note : Turning this feature will sign you out anywhere you’re currently signed in. We will then require you to enter a verification code the first time you sign with a new device or Joby mobile application.',),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: nextButton(
                  buttonText: 'Next',
                  onpressed: () { Get.to(()=>StepVerficationPhoneNumber());},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
