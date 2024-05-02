import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/two-step_verificaton_screen/tow-step_verification_avaliable_method.dart';
import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../components/custom_main_button.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../slider_screen/extract_widget.dart';

class OtpFormScreen extends StatelessWidget {
  const OtpFormScreen({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustumTitle_500_16_black(title: 'Enter the 6 digit code'),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: CustumSubTitle_400_14_grey(subTitle: 'Please confirm your account by entering the authorization code sen to ****-****-7234',),
            ),
            SizedBox(height: 20,),
            Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustumContainerOtp(onChange: (String value1) {
                    if (value1.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                  },),
                  CustumContainerOtp(onChange: (String value2) {
                    if (value2.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                  },),
                  CustumContainerOtp(onChange: (String value3) {
                    if (value3.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                  },),
                  CustumContainerOtp(onChange: (String value4) {
                    if (value4.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                  },),
                  CustumContainerOtp(onChange: (String value5) {
                    if (value5.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                  },),
                  CustumContainerOtp(onChange: (String value6) {


                  },),

                ],
              ),
            ),
            SizedBox(height: 20.h),
            TextButton(onPressed: (){}, child: Text('resent code')),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MainButton(
                  buttonText:Text(S.of(context).Next),
                  onPressed: () {Get.to(()=>const AddingVerifivationMethod()); },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustumContainerOtp extends StatelessWidget {
   CustumContainerOtp({
    required this.onChange,
    Key? key,
  }) : super(key: key);
  Function (String value) onChange;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 44,
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        inputFormatters: [LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly],
      ),
    );
  }
}
