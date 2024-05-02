import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/two-step_verificaton_screen/otp_form_screen.dart';
import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../components/custom_main_button.dart';
import '../../../../components/custum_password_text_field.dart';
import '../../../../components/custum_phone_field.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../slider_screen/extract_widget.dart';
import 'cubits/put_password_cubit.dart';

class StepVerficationPhoneNumber extends StatelessWidget {
  const StepVerficationPhoneNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordVisibilityCubit(),
      child: Scaffold(
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
              CustumTitle_500_14_black(title: 'Add phone number'),
              SizedBox(height: 5,),
              CustumSubTitle_400_12_grey(
                  subTitle: 'We will send a verification code to this number'),
              SizedBox(height: 10.h),
              CustomPhoneField(onchange: (phone) {},),
              SizedBox(height: 20,),
              CustumTitle_500_14_black(title: 'Enter your password'),
              SizedBox(height: 10,),
              BlocBuilder<PasswordVisibilityCubit, PasswordVisibility>(
                builder: (context, state) {
                  return CustomPasswordTextField(
                  
                    icon: IconButton(
                    icon: Icon(state == PasswordVisibility.hidden
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      context
                          .read<PasswordVisibilityCubit>()
                          .toggleVisibility();
                    },
                  ), obscureText: state == PasswordVisibility.hidden,  hintText: '', onChange: (String ) {  }, validator: (String ) {  },);
                },
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MainButton(
                    buttonText: Text(S.of(context).SendCode),
                    onPressed: () { Get.to(()=>const OtpFormScreen());},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
