import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../components/custum_password_text_field.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../generated/l10n.dart';
import '../../../slider_screen/extract_widget.dart';
import 'change_password_cubit.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

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
        body: Padding(
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
                      icon: Icon(state == PasswordVisibility1.hidden1
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        context
                            .read<PasswordVisibilityCubit1>()
                            .toggleVisibility1();
                      },
                    ),
                    obscureText: state == PasswordVisibility1.hidden1, controller: null, hintText: '',
                  );
                },
              ),
              SizedBox(height: 10.h),
              SizedBox(height: 20.h),
              CustumTitle_400_16_black(title:S.of(context).EnterYourNewPassword),
              SizedBox(height: 10.h),
              BlocBuilder<PasswordVisibilityCubit2, PasswordVisibility2>(
                builder: (context, state) {
                  return CustomPasswordTextField(
            
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
                    obscureText: state == PasswordVisibility2.hidden2, controller: null, hintText: '',
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
                    obscureText: state == PasswordVisibility3.hidden3, controller: null, hintText: '',
                  );
                },
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: nextButton(
                    buttonText: S.of(context).Save,
                    onpressed: () {},
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


