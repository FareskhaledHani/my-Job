import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/custom_main_button.dart';
import '../../../generated/l10n.dart';
import '../../apply_job/screen_apply_job/bio_data_screen.dart';
import '../../slider_screen/extract_widget.dart';
import 'custom_container_contact_us_email_or_webSite.dart';

class Company extends StatelessWidget {
  const Company({Key? key, required this.email, required this.website, required this.aboutCompany, required this.jobId}) : super(key: key);
  final String email;
  final String website;
  final String aboutCompany;
  final int jobId;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          S.of(context).ContactsUs,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            ContainerContactsUsEmail(
              titleContainer: S.of(context).Email, subTitleContainer: email,
            ),
            ContainerContactsUsEmail(
              titleContainer: S.of(context).Email, subTitleContainer: website,
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(S.of(context).AboutCompany,style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
        SizedBox(height: 10.h,),
        Text(
          aboutCompany,style: TextStyle(height: 2.h,fontSize: 14.sp,),),
        Expanded(
          child: Stack(children: [
            Positioned(
                bottom: 28.h,
                left: 13.w,
                child: MainButton(buttonText:Text(S.of(context).ApplyNow), onPressed: (){
                Get.to(()=>  BioData(jobId: jobId));
                }))
          ],),
        )
      ],
    );
  }
}