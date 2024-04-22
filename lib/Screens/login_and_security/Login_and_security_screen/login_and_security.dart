import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/phone_number.dart';
import 'package:finalproject/Screens/login_and_security/Login_and_security_screen/two-step_verificaton_screen/two-step_verification_screen.dart';
import 'package:finalproject/components/custum_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/custum_title_in_cotainer.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../component/custum_list_tile_row_widget.dart';
import 'change_passowrd/change_password.dart';
import 'email_adress_screen.dart';

class LoginAndSecurity extends StatelessWidget {
  const LoginAndSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        // leading: Builder(
        //   builder: (BuildContext context) {
        //     return IconButton(
        //       icon: const Icon(Icons.arrow_back_outlined),
        //       onPressed: () {
        //         Get.back();
        //       },
        //     );
        //   },
        // ),
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(title: S.of(context).LoginAndSecurity,),
        elevation: 0,
      ),
      body: ListView(
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
                CustumListTileRow(text: S.of(context).EmailAddress, ontap: () { Get.to(()=>const EmailAdress()); }, hitenText: 'fareskhaled11114ssjk',),
                const Divider(
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),
                CustumListTileRow(text: S.of(context).PhoneNumber, ontap: () {Get.to(()=> const PhoneNumber());  }, hitenText: '',),
                const Divider(
                  thickness: 1,
                  indent: 15,
                  endIndent: 15,
                ),
                CustumListTileRow(text: S.of(context).ChangePassword, ontap: () { Get.to(()=>const ChangePassword()); }, hitenText: '',),
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
      ),
    );
  }
}
