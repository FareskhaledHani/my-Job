import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/custom_main_button.dart';
import '../../../components/custum_email_text_field.dart';
import '../../../components/custum_title_text.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../../home_screen/profile_screen/service/get_profile_service.dart';

class EmailAddress extends StatelessWidget {
  const EmailAddress({Key? key, required this.email,required this.getProfileService}) : super(key: key);
  final String email;
  final GetProfileService getProfileService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).EmailAddress,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustumTitle_400_16_black(title: S.of(context).MainEMailAddress),
            SizedBox(height: 10.h),
            EmailCustumTextField(hint:email, icon:Icons.email_outlined, onPressed: (String value) {  },),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MainButton(
                  buttonText: Text(S.of(context).Save),
                  onPressed: () {Navigator.pop(context);
                  getProfileService.getUserProfile();},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
