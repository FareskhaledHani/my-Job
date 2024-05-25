import 'package:finalproject/Screens/experience_screen/experience_screen.dart';
import 'package:finalproject/Screens/portfolio_screen/portfolio_screen/portfolio_screen.dart';
import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../edit_profile/edit_profile_screen/edit_profile_screen.dart';
import '../../../education_screen/education_screen.dart';
import '../../components/custom_container_complete_ratio.dart';

class CompleteProfile extends StatelessWidget {


  const CompleteProfile(
      {Key? key,
      required this.universityTitleController,
      required this.titleController,
      required this.dateController2,
      required this.dateController1,
      required this.educationKey,
      required this.positionController,
      required this.typeWorkController,
      required this.companyNameController,
      required this.locationController,
      required this.startYearController,
      required this.endYearController,
      required this.experienceKey, required this.ratioComplete,
        ////editProfile
        required this.initialValueName,required this.initialValueAddress,required this.initialValueBio,required this.initialValueNumber, required this.formKey, required this.reloadCallback})
      : super(key: key);
  final int ratioComplete ;
  final TextEditingController universityTitleController;
  final TextEditingController titleController;
  final TextEditingController dateController2;
  final TextEditingController dateController1;
  final GlobalKey<FormState> educationKey;

  //////experience
  final TextEditingController positionController;
  final TextEditingController typeWorkController;

  final TextEditingController companyNameController;

  final TextEditingController locationController;

  final TextEditingController startYearController;

  final TextEditingController endYearController;

  final GlobalKey<FormState> experienceKey;
  /////////
  final String initialValueName;
  final String ?initialValueAddress;
  final String ?initialValueBio;
  final String ?initialValueNumber;
  final  GlobalKey<FormState> formKey;
  final Function() reloadCallback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(

        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).CompleteProfile,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircularPercentIndicator(
              radius: 50,
              percent: (ratioComplete* 0.25),
              animateFromLastPercent: true,
              animation: true,
              lineWidth: 10,
              progressColor: Colors.blue,
              center: Text(
                '${(ratioComplete * 0.25) * 100}%',
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$ratioComplete/4 ${S.of(context).Completed}',
              style: const TextStyle(color: Colors.blue),
            ),
            const SizedBox(
              height: 10,
            ),
            CustumSubTitle_400_14_grey(
                subTitle:
                    S.of(context).CompleteYourProfileBeforeApplyingForAJob),
            SizedBox(height: 30.h),
            ContainerColorIsCompleted(
              title: S.of(context).PersonalDetails,
              colorBorder: CacheHelper.getCompletePersonDetails()
                  // ContainerColor.Personal
                  ? const Color(0xff84A9FF)
                  : Colors.grey,
              subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
              colorContainer: CacheHelper.getCompletePersonDetails()
                  ? const Color(0xffE0EBFF)
                  : Colors.white,
              colorIcon: CacheHelper.getCompletePersonDetails()
                  ? Colors.indigo
                  : const Color(0xffD1D5DB),
              onTap: () async {
                Get.to(()=>EditProfile(
                  initialValueName: initialValueName,
                  initialValueAddress: initialValueAddress,
                  formKey: formKey,
                  initialValueNumber: initialValueNumber,
                  initialValueBio: initialValueBio,
                  reloadCallback: reloadCallback,));
              },
            ),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                width: 20,
                thickness: 2,
                color: CacheHelper.getCompletePersonDetails()
                    // ContainerColor.Personal
                    ? const Color(0xffE0EBFF)
                    : Colors.grey,
              ),
            ),
            ContainerColorIsCompleted(
              title: S.of(context).Education,
              colorBorder: CacheHelper.getCompleteEducation()
                  ? const Color(0xff84A9FF)
                  : Colors.grey,
              subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
              colorContainer: CacheHelper.getCompleteEducation()
                  ? const Color(0xffE0EBFF)
                  : Colors.white,
              colorIcon: CacheHelper.getCompleteEducation()
                  ? Colors.indigo
                  : const Color(0xffD1D5DB),
              onTap: () async {
                final titleInitial = await CacheHelper.getEducation('title');
                final university = await CacheHelper.getEducation('university');
                final startTime = await CacheHelper.getEducation('start');
                final endTime = await CacheHelper.getEducation('end');

                Get.to(() => Education(
                    titleInitial: titleInitial.toString(),
                    startTime: startTime.toString(),
                    titleUniversity: university.toString(),
                    endTime: endTime.toString(),
                    dateController2: dateController2,
                    dateController1: dateController1,
                    titleController: titleController,
                    educationKey: educationKey,
                    universityTitleController: universityTitleController));
              },
            ),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                width: 20,
                thickness: 2,
                color: CacheHelper.getCompleteEducation()
                    ? const Color(0xffE0EBFF)
                    : Colors.grey,
              ),
            ),
            ContainerColorIsCompleted(
              title: S.of(context).Experience,
              colorBorder: CacheHelper.getCompleteExperience()
                  ? const Color(0xff84A9FF)
                  : Colors.grey,
              subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
              colorContainer: CacheHelper.getCompleteExperience()
                  ? const Color(0xffE0EBFF)
                  : Colors.white,
              colorIcon: CacheHelper.getCompleteExperience()
                  ? Colors.indigo
                  : const Color(0xffD1D5DB),
              onTap: () async {
                final position = await CacheHelper.getExperience('position');
                final typeWork = await CacheHelper.getExperience('typeWork');
                final companyName =
                    await CacheHelper.getExperience('companyName');
                final start = await CacheHelper.getExperience('startYear');
                final end = await CacheHelper.getExperience('endYear');
                Get.to(() => ExperienceScreen(
                      positionInitial: position.toString(),
                      startTimeEx: start.toString(),
                      endTimeEx: end.toString(),
                      typeInitial: typeWork.toString(),
                      companyNameInitial: companyName.toString(),
                      typeWorkController: typeWorkController,
                      companyNameController: companyNameController,
                      experienceKey: experienceKey,
                      endYearController: endYearController,
                      positionController: positionController,
                      locationController: locationController,
                      startYearController: startYearController,
                    ));

              },
            ),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                width: 20,
                thickness: 2,
                color: CacheHelper.getCompleteEducation()
                    ? const Color(0xffE0EBFF)
                    : Colors.grey,
              ),
            ),
            ContainerColorIsCompleted(
              title: S.of(context).PortFolio,
              colorBorder: CacheHelper.getCompletePortfolio()
                  ? const Color(0xff84A9FF)
                  : Colors.grey,
              subTitle: S
                  .of(context)
                  .CreateYourPortFolioApplyingForVariousTypesOfJobsIsEasier,
              colorContainer: CacheHelper.getCompletePortfolio()
                  ? const Color(0xffE0EBFF)
                  : Colors.white,
              colorIcon: CacheHelper.getCompletePortfolio()
                  ? Colors.indigo
                  : const Color(0xffD1D5DB),
              onTap: () async {
                Get.to(() => PortfolioEdit());
              },
            ),
          ],
        ),
      ),
    );
  }
}


