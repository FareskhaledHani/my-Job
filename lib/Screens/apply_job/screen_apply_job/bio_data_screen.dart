import 'package:email_validator/email_validator.dart';
import 'package:finalproject/Screens/apply_job/screen_apply_job/tybe_of_work_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../components/custom_main_button.dart';
import '../../../components/custum_container_buble.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../../home_screen/component/custom_filter_text_field.dart';
import '../../slider_screen/extract_widget.dart';
import '../component/custom_title_is_required_star.dart';

class BioData extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final _form = GlobalKey<FormState>();

  BioData({Key? key, required this.jobId}) : super(key: key);
  final int jobId;

  @override
  Widget build(BuildContext context) {
    // String name;
    //  String email;
    //  int number;
    return Scaffold(
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
        title: Text(
          S.of(context).AppliedJob,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      backgroundColor: KPrimaryBackGroundColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Form(
          key: _form,
          child: ListView(

            children: [
              const CustumContainerBubleBio(),
              SizedBox(height: 40.h),
              Text(
                S.of(context).BioData,
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8.h),
              Text(S.of(context).FillInYourBioDataCorrectly,
                  style: TextStyle(color: Colors.grey, fontSize: 16.sp)),
              SizedBox(height: 30.h),
              CustomTitleIsRequiredStar(title: S.of(context).FullName),
              SizedBox(height: 10.h),
              CustomFilterTextField(
                iconSet: const Icon(Icons.person_outline),
                controller: nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name Is Empty';
                  } else if (value.length < 4 ) {
                    return 'Name Is Least Please Check Your Name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.h),
              CustomTitleIsRequiredStar(title: S.of(context).Email),
              SizedBox(height: 10.h),
              CustomFilterTextField(
                iconSet: const Icon(Icons.email_outlined),
                controller: emailController,
                validator: (value) => EmailValidator.validate(value!)
                    ? null
                    : 'please enter a valid email',
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTitleIsRequiredStar(title: S.of(context).NoHandphone),
              SizedBox(
                height: 10.h,
              ),
              CustomFilterTextField(
                iconSet: const Icon(Icons.phone_android_rounded),
                controller: numberController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'number Is Empty';
                  } else if (value.length < 10 && value.length > 1) {
                    return 'number Is Least Please Check Password';
                  }
                  return null;
                },
              ),
              SizedBox(height: 110.h),
              MainButton(
                  buttonText: Text(S.of(context).Next),
                  onPressed: () {
                    if (_form.currentState?.validate() == true) {
                      Get.to(() => TypeOfWork(
                            email: emailController.toString(),
                            name: nameController.toString(),
                            number: numberController.toString(),
                          ));
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
