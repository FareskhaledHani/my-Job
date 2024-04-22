import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../components/custum_container_buble.dart';
import '../../components/custum_container_logo__apply_job.dart';
import '../../components/custum_phone_field.dart';
import '../../generated/l10n.dart';
import '../home_screen/component/custom_filter_text_field.dart';
import '../slider_screen/extract_widget.dart';

class BioAgainAppliedJob extends StatelessWidget {
  const BioAgainAppliedJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).AppliedJob,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            CustumLogoApplyJob(subTypeJob: 'Discord • Jakarta, Indonesia ', imageString: 'images/apply_job/Spectrum Logo.png', nameJob: 'UI/UX Designer',),
            CustumContainerBubleBio(),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).BioData,style: TextStyle(fontSize: 25.sp,fontWeight: FontWeight.w500),),
                SizedBox(height: 5.h,),
                CustumSubTitle_400_14_grey(subTitle: S.of(context).FillInYourBioDataCorrectly),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Text(S.of(context).FullName,style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
                    Icon(FontAwesomeIcons.starOfLife,color: Colors.orangeAccent,size: 8,)
                  ],
                ),
                SizedBox(height: 10.h,),
                CustomFilterTextField(iconSet:const Icon(Icons.person_outline), onSubmitted: (String value) {  },),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Text(S.of(context).Email,style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
                    Icon(FontAwesomeIcons.starOfLife,color: Colors.orangeAccent,size: 8,)
                  ],
                ),
                SizedBox(height: 10.h,),
                CustomFilterTextField(iconSet:const Icon(Icons.email_outlined), onSubmitted: (String value) {  },),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Text(S.of(context).NoHandphone,style: TextStyle(fontWeight:FontWeight.w400 ,fontSize: 20.sp),),
                    Icon(FontAwesomeIcons.starOfLife,color: Colors.orangeAccent,size: 8,)
                  ],
                ),
                SizedBox(height: 10.h,),
                CustumPhoneField(
                  onchange: (phone) {},
                ),
                SizedBox(height:110.h),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: nextButton(buttonText: 'Next', onpressed:(){ }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

