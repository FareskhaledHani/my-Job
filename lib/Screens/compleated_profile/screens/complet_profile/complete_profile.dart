import 'package:finalproject/Screens/edit_profile/edit_profile_screen/edit_profile_screen.dart';
import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import '../../cubit.dart';
import '../education_screen/education_screen.dart';

class CompleteProfile extends StatelessWidget {
  int ratioComplet=0;

  CompleteProfile({Key? key}) : super(key: key);

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
            CircularPercentIndicator(radius: 50,percent: (ratioComplet*0.25),
              animateFromLastPercent: true,
              animation: true,
              lineWidth: 10,
              progressColor: Colors.blue,
              center: Text('${(ratioComplet*0.25)*100}%',style: TextStyle(fontSize: 18),),
            ),
            const SizedBox(height: 20,),
            Text('${ratioComplet}/4 ${S.of(context).Completed}',style: TextStyle(color: Colors.blue),),
            const SizedBox(height: 10,),
            CustumSubTitle_400_14_grey(subTitle: S.of(context).CompleteYourProfileBeforeApplyingForAJob),
             SizedBox(
              height: 30.h
            ),
            ContainerColorIsCompleted(
              title: S.of(context).PersonalDetails,
              colorBorder: CacheHelper.getCompletePersonDetails()
              // ContainerColor.Personal
                  ? const Color(0xffE0EBFF)
                  : Colors.grey,
              subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
              colorContainer:CacheHelper.getCompletePersonDetails()
                  ? const Color(0xffE0EBFF)
                  : Colors.white,
              colorIcon:
              CacheHelper.getCompletePersonDetails()

                  ?  Colors.indigo
                  : const Color(0xffD1D5DB), onTap: () {
              // Get.to(()=>EditProfile());
              ratioComplet=1;
            },
            ),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                width: 20,thickness: 2,color: CacheHelper.getCompletePersonDetails()
              // ContainerColor.Personal
                  ? const Color(0xffE0EBFF)
                  : Colors.grey,
              ),
            ),
            ContainerColorIsCompleted(
              title: S.of(context).Education,
              colorBorder: CacheHelper.getCompleteEducation()
                  ? const Color(0xffE0EBFF)
                  : Colors.grey,
              subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
              colorContainer:
              CacheHelper.getCompleteEducation()
                  ? const Color(0xffE0EBFF)
                  : Colors.white,
              colorIcon:
              CacheHelper.getCompleteEducation()
                  ? Colors.indigo
                  : const Color(0xffD1D5DB), onTap: () {
              ratioComplet=2;
              Get.to(()=> Education());

                },
            ),
            SizedBox(
              height: 20,
              child: VerticalDivider(
                width: 20,thickness: 2,color:
              CacheHelper.getCompleteEducation()
                  ? const Color(0xffE0EBFF)
                  : Colors.grey,
              ),
            ),
            // ContainerColorIsCompleted(
            //   title: S.of(context).PersonalDetails,
            //   colorBorder: currentColor == ContainerColor.Experience
            //       ? Color(0xff84A9FF)
            //       : Color(0xffD1D5DB),
            //   subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
            //   colorContainer:
            //   currentColor == ContainerColor.Experience
            //       ? Color(0xffE0EBFF)
            //       : Colors.white,
            //   colorIcon:
            //   currentColor == ContainerColor.Experience
            //       ? Colors.indigo
            //       : Color(0xffD1D5DB), onTap: () {
            //   ratioComplet=3;
            //     BlocProvider.of<ContainerColorCubit>(context)
            //     .changeColor(ContainerColor.Experience); },
            // ),
            // SizedBox(
            //   height: 20,
            //   child: VerticalDivider(
            //     width: 20,thickness: 2,
            //     color:  currentColor == ContainerColor.Experience
            //         ? Color(0xffE0EBFF)
            //         : Colors.white,
            //   ),
            // ),
            // ContainerColorIsCompleted(
            //   title: S.of(context).PortFolio,
            //   colorBorder: currentColor == ContainerColor.Portfolio
            //       ? Color(0xff84A9FF)
            //       : Color(0xffD1D5DB),
            //   subTitle:S.of(context).FullNameEmailPhoneNumberAndyourAddress,
            //   colorContainer:
            //   currentColor == ContainerColor.Portfolio
            //       ? Color(0xffE0EBFF)
            //       : Colors.white,
            //   colorIcon:
            //   currentColor == ContainerColor.Portfolio
            //       ? Colors.indigo
            //       : Color(0xffD1D5DB), onTap: () {
            //   ratioComplet=4;
            //     BlocProvider.of<ContainerColorCubit>(context)
            //         .changeColor(ContainerColor.Portfolio);
            //
            // },
            // ),

          ],
        ),
      ),
    );
  }
}

class ContainerColorIsCompleted extends StatelessWidget {
  ContainerColorIsCompleted({
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.colorBorder,
    required this.colorContainer,
    required this.colorIcon,
    Key? key,
  }) : super(key: key);
  Color colorContainer;
  Color colorBorder;
  Color colorIcon;
  String title;
  String subTitle;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap:onTap,
          //     () {
          //   BlocProvider.of<ContainerColorCubit>(context)
          //       .changeColor(ContainerColor.red);
          // },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 80.h,
            decoration: BoxDecoration(
                color: colorContainer,
                // currentColor == ContainerColor.red
                //     ? Color(0xffE0EBFF)
                //     : Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: colorBorder,

                )),
            child: ListTile(
              minVerticalPadding: 10,
              minLeadingWidth: 1,
              leading: Icon(
                Icons.check_circle,
                color: colorIcon,
                // currentColor == ContainerColor.red
                //     ? Colors.indigo
                //     : Color(0xffD1D5DB),
              ),
              title: Text(title),
              subtitle: Text(subTitle),
              trailing: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
          ),
        ),

      ],
    );
  }
}
