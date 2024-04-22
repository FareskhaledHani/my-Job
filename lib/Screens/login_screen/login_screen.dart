import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/login_screen/auth_cubit.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/custum_password_text_field.dart';
import '../../components/custum_sighn_with_google_Facebook.dart';
import '../../core/services/services_auth.dart';
import '../../generated/l10n.dart';
import '../bottom_nav_bar/views/bottom_nav_bar_view.dart';
import '../bottom_nav_bar/views/widgets/bottom_nav_bar_body.dart';
import '../portfolio_screen/portfolio_screen/portfolio_screen.dart';
import 'auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final MyControoller MyControooller = Get.put(MyControoller());

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  bool? isChecked=false;
  //final ServicesAuth _authService = ServicesAuth();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
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
                    .showSnackBar(SnackBar(content: Text(state.message)));
              }
              // TODO: implement listener
            },
            builder: (context, state) {
              return Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const AppLogoAndBackButton(),
                      Padding(
                        padding: EdgeInsets.only(top: 35.0.h,bottom: 5.h),
                        child: Row(
                          children: [
                            Text(
                              S.of(context).Login,
                              style:  TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28.sp,
                                  color:const Color(0xFF111827)),
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
                                color:const Color(0xFF6B7280)),
                          ),
                        ],
                      ),
                       SizedBox(height: 30.h),
                      TextFormField(
                        controller: _emailController,
                        onTap: () => MyControooller.changeButtonColor(),
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
                        padding: const EdgeInsets.only(
                          top: 15,
                        ).h,
                        child: BlocBuilder<PasswordVisibilityCubit,
                            PasswordVisibility>(
                          builder: (context, state) {
                            // return TextFormField(
                            //   obscureText: MyControooller.obscureText.value,
                            //   controller: _passwordController,
                            //   // controller: controller1,
                            //   decoration: InputDecoration(
                            //     hintText: S.of(context).Password,
                            //     prefixIcon: const Icon(
                            //       Icons.lock_outline,
                            //     ),
                            //     suffixIcon: GestureDetector(
                            //       onTap: () {
                            //         MyControooller.toggleObscureText();
                            //       },
                            //       child: Obx(() => Icon(
                            //             MyControooller.obscureText.value
                            //                 ? Icons.visibility
                            //                 : Icons.visibility_off,
                            //           )),
                            //     ),
                            //     border: const OutlineInputBorder(
                            //       borderRadius: BorderRadius.all(
                            //         Radius.circular(10),
                            //       ),
                            //     ),
                            //   ),
                            //   validator: (value) {
                            //     if (value!.length < 8) {
                            //       return S
                            //           .of(context)
                            //           .PasswordMustBeAtLeast8Characters;
                            //     }
                            //   },
                            // );
                           return CustomPasswordTextField(
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
                             ),hintText: S.of(context).Password,);
                          },
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 10.h),
                        child:ListTile(
                          dense: true,
                         horizontalTitleGap: 0,
                         //minVerticalPadding: 10.h,
                          minLeadingWidth: 0,
                        contentPadding: EdgeInsets.zero,
                        leading:  Checkbox(onChanged: (newBool) {setState(()=>isChecked=newBool);   },side: const BorderSide(width: 1), value: isChecked,),
                          title:  Text(S.of(context).RememberMe),
                          textColor: Colors.grey,
                          trailing:    TextButton(
                              onPressed: () {},
                              child: Text(S.of(context).ForgetPassword)),
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Row(
                        //      // mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //          Checkbox(onChanged: (newBool) {setState(()=>isChecked=newBool);   }, value: isChecked,),
                        //         Text(S.of(context).RememberMe),
                        //       ],
                        //     ),
                        //     TextButton(
                        //         onPressed: () {},
                        //         child: Text(S.of(context).ForgetPassword))
                        //   ],
                        // ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 170).h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).DontHaveAnAccount,
                              style: const TextStyle(color: Color(0XFF9CA3AF)),
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.to(() => CereateAcount());
                                },
                                child: Text(S.of(context).Register))
                          ],
                        ),
                      ),
                      nextButton(
                          buttonText: state is AuthLoading
                              ? const Center(
                                  child: CircularProgressIndicator(
                                  strokeWidth: 1,
                                  color: Colors.white,
                                ))
                              : Text(S.of(context).Login),
                          onpressed: () async {
                            String email = _emailController.text.trim();
                            String password = _passwordController.text.trim();
                            context.read<AuthCubit>().Login(email, password);
                          }),
                       Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: const OrSineWithAnAcount(),
                      ),
                      const SighnWithGoogleAndFaceBook()
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
