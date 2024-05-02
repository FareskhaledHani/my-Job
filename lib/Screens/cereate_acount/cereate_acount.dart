import 'package:email_validator/email_validator.dart';
import 'package:finalproject/Screens/cereate_acount/cubits/create_account_cubit.dart';
import 'package:finalproject/Screens/hope_work_screen/screen/type_of_work.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../components/custom_line_divider_text.dart';
import '../../components/custom_text_field_with_controller.dart';
import '../../components/custum_sighn_with_google_Facebook.dart';
import '../../generated/l10n.dart';
import 'cubits/visiable_cubit/visable_cubit.dart';

class CreateAccount extends StatelessWidget {
  final MyControoller MyControooller = Get.put(MyControoller());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateAccountCubit(),
        ),
        BlocProvider(
          create: (context) => PasswordVisibilityCreateCubit(),
        ),
      ],
      child: Scaffold(
        body: BlocConsumer<CreateAccountCubit, CreateAccountState>(
          listener: (context, state) {
            if (state is AuthAuthenticated) {
              Get.to(() => const TypeOfWorkScreen());
            } else if (state is AuthError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(S.of(context).CheckYourAccountOrNetwork)));
            }
            // TODO: implement listener
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.only(right: 24.w,left: 24.w,top:30.h,bottom: 10),
                child: Column(children: [
                  const AppLogoAndBackButton(),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).CreateAccount,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0).h,
                    child: Row(
                      children: [
                        Text(
                          S.of(context)
                              .PleaseCreateAnAccountToFindYourDreamJob
                              .trim(),
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              color: Colors.blueGrey),
                        )
                      ],
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0.h),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return S.of(context).NameIsEmpty;
                              } else if (value.length < 3 ) {
                                return S.of(context).NameIsLeast;
                              }
                              return null;
                            },
                            controller: _userNameController,
                            onTap: () => MyControooller.changeButtonColor(),
                            decoration: InputDecoration(
                              hintText: S.of(context).UserName,
                              prefixIcon: const Icon(Icons.person),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        TextFormField(
                          validator: (value) => EmailValidator.validate(value!)
                              ? null
                              : S.of(context).CheckYourEmail,
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: S.of(context).Email,
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        BlocBuilder<PasswordVisibilityCreateCubit,
                            PasswordVisibilityCreate>(
                          builder: (context, state) {
                            return CustomPasswordTextFieldController(
                              icon: IconButton(
                                icon: Icon(
                                    state == PasswordVisibilityCreate.hidden
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                onPressed: () {
                                  context
                                      .read<PasswordVisibilityCreateCubit>()
                                      .toggleVisibility();
                                },
                              ),
                              obscureText:
                                  state == PasswordVisibilityCreate.hidden,
                              hintText: S.of(context).Password,
                              controller: _passwordController,
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
                      ],
                    ),
                  ),
                  SizedBox(height: 150.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).AlreadyHaveAnAccount,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(S.of(context).Login),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      String userName = _userNameController.text.trim();
                      String email = _emailController.text.trim();
                      String password = _passwordController.text.trim();
                      if (formKey.currentState!.validate()) {
                        context
                            .read<CreateAccountCubit>()
                            .Register(email, password, userName);
                        CacheHelper.savePassword('PasswordKey', password);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 50.w),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: MyControooller.buttonColor.value,
                    ),
                    child: state is AuthLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                            strokeWidth: 1,
                            color: Colors.white,
                          ))
                        : Text(S.of(context).CreateAccount),
                  ),
                  SizedBox(height: 20.h),
                  const OrSineWithAnAccount(),
                  const SighnWithGoogleAndFaceBook(),
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
