import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/phone_number/phone_number.dart';
import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/two-step_verificaton_screen/two-step_verification_screen.dart';
import 'package:finalproject/components/custum_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/custum_title_in_cotainer.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../../home_screen/profile_screen/service/get_profile_service.dart';
import '../component/custum_list_tile_row_widget.dart';
import 'change_passowrd/change_password.dart';
import 'email_adress_screen.dart';

class LoginAndSecurity extends StatelessWidget {
  const LoginAndSecurity({Key? key, required this.email, required this.number, required this.globalKey, required this.getProfileService, required this.formKey, required this.passwordUpdate}) : super(key: key);
  final String email;
  final String number;
  final GlobalKey<FormState> globalKey;
  final GetProfileService getProfileService;
  final GlobalKey<FormState>formKey;
  final  TextEditingController passwordUpdate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(S.of(context).LoginAndSecurity,style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w500),),
        elevation: 0,
      ),
      body:  BodyLoginSecurity(email:email, number: number, globalKey: globalKey, getProfileService: getProfileService, formKey: formKey, passwordUpdate: passwordUpdate,),
    );
  }
}

class BodyLoginSecurity extends StatelessWidget {
  const BodyLoginSecurity({
    Key? key, required this.email, required this.number, required this.globalKey,required this.getProfileService, required this.formKey, required this.passwordUpdate,
  }) : super(key: key);
  final String email;
  final String number;
  final GlobalKey<FormState> globalKey;
  final GlobalKey<FormState> formKey;
  final GetProfileService getProfileService;
  final  TextEditingController passwordUpdate;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0).h,
          child: TitleInContainer(
            title: S.of(context).AccountAccess,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              CustumListTileRow(text: S.of(context).EmailAddress, ontap: () { Get.to(()=> EmailAddress(email: email, getProfileService: getProfileService,)); }, hitenText: email,),
              const Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              CustumListTileRow(text: S.of(context).PhoneNumber, ontap: () {Get.to(()=>  PhoneNumber(number:number, globalKey: globalKey, getProfileService: getProfileService,));  }, hitenText: '',),
              const Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              CustumListTileRow(text: S.of(context).ChangePassword, ontap: () { Get.to(()=> ChangePassword(formKey:formKey, passwordUpdate: passwordUpdate,)); }, hitenText: '',),
              const Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              CustumListTileRow(text: S.of(context).TwoStepVerification, ontap: () { Get.to(()=>const TwoStepVerification()); }, hitenText: 'Non active',),
              const Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              CustumListTileRow(text: S.of(context).FaceID, ontap: () {  }, hitenText: '',),
              const Divider(
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
