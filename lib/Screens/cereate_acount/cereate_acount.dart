import 'package:email_validator/email_validator.dart';
import 'package:finalproject/Screens/cereate_acount/cubits/create_account_cubit.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../components/custum_sighn_with_google_Facebook.dart';
import '../../core/services/services_auth.dart';
import '../../generated/l10n.dart';
import '../portfolio_screen/portfolio_screen/portfolio_screen.dart';

class CereateAcount extends StatelessWidget {
  final MyControoller MyControooller = Get.put(MyControoller());

  //TextEditingController controller1 = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  ServicesAuth _servicesAuth = ServicesAuth();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocProvider(
      create: (context) => CreateAccountCubit(),
      child: Scaffold(
        body: BlocConsumer<CreateAccountCubit, CreateAccountState>(
          listener: (context, state) {
            if(state is AuthAuthenticated){
              Get.to(()=>PortfolioEdit());
            }else if (state is AuthError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));

            }
            // TODO: implement listener
          },
          builder: (context, state) {
            return state is AuthLoading ?
            Center(child: CircularProgressIndicator(),):
             SingleChildScrollView(
              child: Form(

                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10).h.w,
                  child: Column(children: [
                    AppLogoAndBackButton(),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0).h,
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
                            S
                                .of(context)
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
                            padding: const EdgeInsets.only(top: 40.0).h,
                            child: TextFormField(
                              controller: _userNameController,
                              onTap: () => MyControooller.changeButtonColor(),
                              decoration: InputDecoration(
                                hintText: S.of(context).UserName,
                                prefixIcon: const Icon(
                                  Icons.person,
                                ),
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ).h,
                            child: TextFormField(
                            validator: (value)=>EmailValidator.validate(value!)?null:'please enter a valid email',
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15).h,
                            child: CustumPasswordTextField(
                                MyControooller: MyControooller,
                                passwordController: _passwordController),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 108).h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).AlreadyHaveAnAccount,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(S.of(context).Login),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        String userName = _userNameController.text.trim();
                        String email = _emailController.text.trim();
                        String password = _passwordController.text.trim();
                        if (formKey.currentState!.validate()){  context.read<CreateAccountCubit>().Register(email, password, userName);}

                        // MyControooller.createAccount(email, password);
                      },
                      child:
                      Text(S.of(context).CreateAccount),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 50.w),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: MyControooller.buttonColor.value,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 20).h,
                      child: const OrSineWithAnAcount(),
                    ),
                    const SighnWithGoogleAndFaceBook(),
                    // Row(
                    //   children: [
                    //     TextButton(
                    //       onPressed: () {
                    //         MyControooller.signInWithGoogle();
                    //         // Get.toNamed('/page2');
                    //       },
                    //       child: Text('Google'),
                    //     ),
                    //     TextButton(
                    //       onPressed: () {
                    //         MyControooller.signInWithFacebook();
                    //       },
                    //       child: Text('Facebook'),
                    //     )
                    //   ],
                    // ),
                  ]),
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}

class CustumPasswordTextField extends StatelessWidget {
  const CustumPasswordTextField({
    Key? key,
    required this.MyControooller,
    required TextEditingController passwordController,
  })  : _passwordController = passwordController,
        super(key: key);

  final MyControoller MyControooller;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: MyControooller.obscureText.value,
      controller: _passwordController,
      decoration: InputDecoration(
        hintText: S.of(context).password,
        prefixIcon: const Icon(
          Icons.lock_open_rounded,
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            MyControooller.toggleObscureText();
          },
          child: Obx(() => Icon(
                MyControooller.obscureText.value
                    ? Icons.visibility
                    : Icons.visibility_off,
              )),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      validator: (value) {
        if (value!.length < 8) {
          return S.of(context).PasswordMustBeAtLeast8Characters;
        }
      },
    );
  }
}
