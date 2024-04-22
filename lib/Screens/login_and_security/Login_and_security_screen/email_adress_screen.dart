import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/custum_email_text_field.dart';
import '../../../components/custum_title_text.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';

class EmailAdress extends StatelessWidget {
  const EmailAdress({Key? key}) : super(key: key);

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
            EmailCustumTextField(hint: 'fareskhaledhani@gmail.com', icon:Icons.email_outlined, onPressed: (String value) {  },),
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
    );
  }
}
