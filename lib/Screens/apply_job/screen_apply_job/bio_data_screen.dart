import 'package:finalproject/Screens/apply_job/screen_apply_job/tybe_of_work_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/Custum_buble_check.dart';
import '../../../components/custum_container_buble.dart';
import '../../../generated/l10n.dart';
import '../../home_screen/component/custom_filter_text_field.dart';
import '../../slider_screen/extract_widget.dart';
import '../component/custem_widget.dart';

class BioData extends StatelessWidget {
  const BioData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title:  Text(
            S.of(context).AppliedJob,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustumContainerBubleBio(),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  S.of(context).BioData,
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                 Text(S.of(context).FillInYourBioDataCorrectly),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Text(
                      S.of(context).FullName,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                    ),
                    Icon(FontAwesomeIcons.starOfLife,color: Colors.orangeAccent,size: 8,)
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomFilterTextField(
                  iconSet: const Icon(Icons.person_outline),
                  onSubmitted: (String value) {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Email*',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomFilterTextField(
                  iconSet: const Icon(Icons.email_outlined),
                  onSubmitted: (String value) {},
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  S.of(context).NoHandphone,
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomFilterTextField(
                  iconSet: const Icon(Icons.person_outline),
                  onSubmitted: (String value) {},
                ),
                SizedBox(height: 110.h),
                nextButton(
                    buttonText: S.of(context).Next,
                    onpressed: () {

                      Get.to(() => TypeOfWork());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
