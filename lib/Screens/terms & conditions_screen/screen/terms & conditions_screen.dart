import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/material.dart';
import '../../../components/custum_title_text.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).TermsConditions,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            CustumTitle_500_20_black(title: S.of(context).ThankYouVeryMuch),
            const SizedBox(height: 10,),
            CustumSubTitle_400_14_grey(subTitle: S.of(context).SubTitleYourPrivacy4),
            const SizedBox(height: 20,),
            CustumTitle_500_20_black(title: S.of(context).ThankYouVeryMuch),
            const SizedBox(height: 10,),
            CustumSubTitle_400_14_grey(subTitle:S.of(context).NowHowShowDrink),
            const SizedBox(height: 10,),
            Container(
              color: const Color(0xffF4F4F5),
              padding: const EdgeInsets.all(10),
              child: CustumSubTitle_400_14_grey(subTitle: S.of(context).NowHowShowDrinkInFact,),
            ),
            const SizedBox(height: 20,),
            CustumSubTitle_400_14_grey(subTitle: S.of(context).SubTitleYourPrivacy4),          ],
        ),
      ),
    );
  }
}
