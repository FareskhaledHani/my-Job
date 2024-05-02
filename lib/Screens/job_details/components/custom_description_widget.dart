import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/custom_main_button.dart';
import '../../../generated/l10n.dart';
import '../../apply_job/screen_apply_job/bio_data_screen.dart';
import '../../slider_screen/extract_widget.dart';


// 0 loaded widget in job details screen



// 1 description widget in job details screen
class Description extends StatelessWidget {
  const Description({Key? key, required this.jobDescription, required this.skillRequired, required this.jobId, }) : super(key: key);

 final String jobDescription;
 final String skillRequired;
 final int jobId;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[

        Positioned(
            top: 20.h,
            child:  Text(S.of(context).JobDescription,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
        Positioned(
            top: 40.h,
            child:  Text(jobDescription,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,height: 2.h),)),

        Positioned(
            top: 190.h,
            child:  Text(S.of(context).JobDescription,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp),)),
        Positioned(
            top: 210.h,
            child:  Text(skillRequired,style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.sp,height: 2.h),)),
        Positioned(
            bottom: 28.h,
            left: 13.w,
            child: MainButton(buttonText:Text(S.of(context).ApplyNow), onPressed: (){
              Get.to(()=>
              BioData(jobId: jobId,));
              // Get.to(() =>  BioData());
            }))],
    );
  }
}


