import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/material.dart';
import '../../../components/custum_title_text.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).PrivacyPolicy,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(

          children: [
            CustumTitle_500_20_black(title:S.of(context).YourPrivacyIsImportant),
            const SizedBox(height: 10,),
            CustumSubTitle_400_12_grey(subTitle: S.of(context).SubTitleYourPrivacy1),
            const SizedBox(height: 10,),
            CustumSubTitle_400_14_grey(subTitle:S.of(context).SubTitleYourPrivacy2),
            const SizedBox(height: 20,),
            CustumTitle_500_20_black(title: S.of(context).SubTitleYourPrivacy3),
            const SizedBox(height: 10,),
            CustumSubTitle_400_14_grey(subTitle: S.of(context).SubTitleYourPrivacy4),
          ],
        ),
      ),
    );
  }
}
