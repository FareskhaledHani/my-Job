import 'package:finalproject/Screens/home_screen/home_screen/home_screen.dart';
import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/change_passowrd/service/edit_password_service.dart';
import 'package:finalproject/components/custom_text_field_with_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../components/custom_main_button.dart';
import '../../../../components/custum_password_text_field.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../core/cash_helper.dart';
import '../../../../generated/l10n.dart';
import '../../../slider_screen/extract_widget.dart';
import 'change_password_cubit.dart';

class ChangePassword extends StatelessWidget {
    const ChangePassword({Key? key, required this.formKey, required this.passwordUpdate}) : super(key: key);
  final GlobalKey<FormState>formKey;
    final  TextEditingController passwordUpdate;
  // late String passwordUpdate;
  // final ServiceUpdatePassword serviceUpdatePassword=ServiceUpdatePassword();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PasswordVisibilityCubit1>(
        create: (context) => PasswordVisibilityCubit1(),),
       BlocProvider<PasswordVisibilityCubit2>(
          create:(context)=>PasswordVisibilityCubit2(),),
          BlocProvider<PasswordVisibilityCubit3>(
            create:(context)=>PasswordVisibilityCubit3(),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: CustumTitle_500_20_black(
            title: S.of(context).ChangePassword,
          ),
          elevation: 0,
        ),
        body:  BodyChangePassword(formKey: formKey, passwordUpdate: passwordUpdate,),
      ),
    );
  }
}

class BodyChangePassword extends StatelessWidget {
   const BodyChangePassword({
    Key? key, required this.formKey, required this.passwordUpdate,
  }) : super(key: key);
 final GlobalKey<FormState>formKey;
  final  TextEditingController passwordUpdate;



  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey ,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustumTitle_400_16_black(title: S.of(context).EnterYourOldPassword),
            SizedBox(height: 10.h),
            BlocBuilder<PasswordVisibilityCubit1, PasswordVisibility1>(
              builder: (context, state) {
                return CustomPasswordTextField(

                  icon: IconButton(
                    icon: Icon(state == PasswordVisibility1.hidden1 ? Icons.visibility_off : Icons.visibility),
                    onPressed: () {
                      context.read<PasswordVisibilityCubit1>().toggleVisibility1();
                    },
                  ),
                  obscureText: state == PasswordVisibility1.hidden1, hintText: '',
                   validator: (value ){if (value!= CacheHelper.getPassword('PasswordKey') ){return S.of(context).CheckYourOldPassword
                  ;}  }, onChange: (String ) {  },

                );
              },
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 20.h),
            CustumTitle_400_16_black(title:S.of(context).EnterYourNewPassword),
            SizedBox(height: 10.h),
            BlocBuilder<PasswordVisibilityCubit2, PasswordVisibility2>(
              builder: (context, state) {
                return CustomPasswordTextFieldController(
                  controller: passwordUpdate,
                  icon: IconButton(
                    icon: Icon(state == PasswordVisibility2.hidden2
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      context
                          .read<PasswordVisibilityCubit2>()
                          .toggleVisibility2();
                    },
                  ),
                  obscureText: state == PasswordVisibility2.hidden2, hintText: '',
                  validator: (value ) {
                    if (value!.isEmpty) {
                      return S.of(context).PasswordIsEmpty;
                    } else if (value.length < 7 ) {
                      return S.of(context).PasswordIsLeast;
                    }
                    return null;
                      },
                );
              },
            ),
            SizedBox(height: 20.h),
            CustumTitle_400_16_black(title:S.of(context).ConfirmYourNewPassword),
            SizedBox(height: 10.h),
            BlocBuilder<PasswordVisibilityCubit3, PasswordVisibility3>(
              builder: (context, state) {
                return CustomPasswordTextField(

                  icon: IconButton(
                    icon: Icon(state == PasswordVisibility3.hidden3
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      context
                          .read<PasswordVisibilityCubit3>()
                          .toggleVisibility3();
                    },
                  ),

                  obscureText: state == PasswordVisibility3.hidden3,  hintText: '',
                  validator: (value ) {
                    if ( passwordUpdate.text != value){return S.of(context).passwordNotEqualNewPassword; } return null;}, onChange: (String ) {  },

                );
              },
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MainButton(
                  buttonText: Text(S.of(context).Save,),
                  onPressed: () {
                    if (formKey.currentState?.validate() == true){
                      CacheHelper.savePassword('PasswordKey', passwordUpdate.text);
                      ServiceUpdatePassword().updatePassword(passwordUpdate.text);
                      Get.to(()=>HomeScreen());
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


