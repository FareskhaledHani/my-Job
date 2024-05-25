import 'package:email_validator/email_validator.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/login_screen/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../components/custom_line_divider_text.dart';
import '../../components/custom_main_button.dart';
import '../../components/custom_text_field_with_controller.dart';
import '../../components/custum_sighn_with_google_Facebook.dart';
import '../../core/cash_helper.dart';
import '../../generated/l10n.dart';
import '../bottom_nav_bar/views/bottom_nav_bar_view.dart';
import '../reset_account/reset_account_screen.dart';
import 'auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => PasswordVisibilityCubit(),
        ),
      ],
      child: Scaffold(
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthAuthenticated) {
              Get.to(() => const BottomNavBar());
            } else if (state is AuthError) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(S.of(context).CheckYourAccountOrNetwork),duration:const Duration(seconds: 2), ));
            }
            // TODO: implement listener
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: Padding(
                padding:
                    EdgeInsets.only(right: 24.w,left: 24.w,top:40.h,bottom: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('images/slider/J BSQUE .jpg'),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 35.0.h, bottom: 5.h),
                        child: Row(
                          children: [
                            Text(
                              S.of(context).Login,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28.sp,
                                  color: const Color(0xFF111827)),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            S.of(context).PleaseLoginToFindYourDreamJob,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF6B7280)),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
                        validator:  (value)=>EmailValidator.validate(value!)?null:S.of(context).CheckYourEmail,
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: S.of(context).UserName,
                          prefixIcon: const Icon(
                            Icons.person_outline,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          top: 15.h,
                        ),
                        child: BlocBuilder<PasswordVisibilityCubit,
                            PasswordVisibility>(
                          builder: (context, state) {
                            return CustomPasswordTextFieldController(
                              controller: _passwordController,
                              obscureText: state == PasswordVisibility.hidden,
                              icon: IconButton(
                                icon: Icon(state == PasswordVisibility.hidden
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                onPressed: () {
                                  context
                                      .read<PasswordVisibilityCubit>()
                                      .toggleVisibility();
                                },
                              ),
                              hintText: S.of(context).Password,
                              validator: (value) {
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: ListTile(
                          dense: true,
                          horizontalTitleGap: 0,
                          minLeadingWidth: 0,
                          contentPadding: EdgeInsets.zero,
                          leading: Checkbox(
                            onChanged: (newBool) {
                              setState(() => isChecked = newBool);
                            },
                            side: const BorderSide(width: 1),
                            value: isChecked,
                          ),
                          title: Text(S.of(context).RememberMe),
                          textColor: Colors.grey,
                          trailing: TextButton(
                              onPressed: () {Get.to(const ResetScreen());},
                              child: Text(S.of(context).ForgetPassword)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 170).h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).DontHaveAnAccount,
                              style:
                                  const TextStyle(color: Color(0XFF9CA3AF)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => CreateAccount());
                                },
                                child: Text(S.of(context).Register))
                          ],
                        ),
                      ),
                      MainButton(
                          buttonText: state is AuthLoading
                              ? const Center(
                                  child: CircularProgressIndicator(
                                  strokeWidth: 1,
                                  color: Colors.white,
                                ))
                              : Text(S.of(context).Login),
                          onPressed: () async {
                            // CacheHelper.removeLoginData();
                            CacheHelper.deletePassword('PasswordKey');
                            if (formKey.currentState?.validate() == true) {
                              String email = _emailController.text.trim();
                              String password =
                                  _passwordController.text.trim();
                              context
                                  .read<AuthCubit>()
                                  .login(email, password);

                             if(isChecked =true){ final passwordCash = CacheHelper.savePassword(
                                  'PasswordKey', password);
                              print(
                                  '===========================${passwordCash}');}
                            }
                          }),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child:  const OrSineWithAnAccount(),
                      ),
                      const SighnWithGoogleAndFaceBook()
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
