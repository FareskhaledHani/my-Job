import 'package:finalproject/Screens/edit_profile/edit_profile_screen/edit_profile_screen.dart';
import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import '../../cubit.dart';
import '../education_screen/education_screen.dart';

class ColorChangeContainerWidget extends StatelessWidget {
  int ratioComplet=0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContainerColorCubit(),
      child: Scaffold(
        backgroundColor: KPrimaryBackGroundColor,
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: CustumTitle_500_20_black(
            title: S.of(context).DeleteConversation,
          ),
          elevation: 0,
        ),
        body: BlocBuilder<ContainerColorCubit, ContainerColor>(
          builder: (context, currentColor) {
            return Padding(
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
                  SizedBox(height: 20,),
                  Text('${ratioComplet}/4 ${S.of(context).Completed}',style: TextStyle(color: Colors.blue),),
                  SizedBox(height: 10,),
                  CustumSubTitle_400_14_grey(subTitle: S.of(context).CompleteYourProfileBeforeApplyingForAJob),
                  SizedBox(
                    height: 30,
                  ),
                  ContainerColorIsCompleted(
                    title: S.of(context).PersonalDetails,
                    colorBorder: currentColor == ContainerColor.Personal
                        ? Color(0xff84A9FF)
                        : Color(0xffD1D5DB),
                    subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
                    colorContainer:
                    currentColor ==ContainerColor.Personal
                      // ContainerColor.Personal
                        ? Color(0xffE0EBFF)
                        : Colors.white,
                    colorIcon:
                    currentColor == ContainerColor.Personal
                        ? Colors.indigo
                        : Color(0xffD1D5DB), onTap: () {
                        Get.to(()=>EditProfile());
                        ratioComplet=1;
                       BlocProvider.of<ContainerColorCubit>(context)
                       .changeColor(ContainerColor.Personal);
                      },
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      width: 20,thickness: 2,color: currentColor == ContainerColor.Personal
                        ? Color(0xffE0EBFF)
                        : Colors.white,
                    ),
                  ),
                  ContainerColorIsCompleted(
                    title: S.of(context).Education,
                    colorBorder: currentColor ==ContainerColor.Education
                        ? Color(0xff84A9FF)
                        : Color(0xffD1D5DB),
                    subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
                    colorContainer:
                    currentColor ==ContainerColor.Education
                        ? Color(0xffE0EBFF)
                        : Colors.white,
                    colorIcon:
                    currentColor == ContainerColor.Education
                        ? Colors.indigo
                        : Color(0xffD1D5DB), onTap: () {
                    ratioComplet=2;
                    Get.to(()=> Education());
                       BlocProvider.of<ContainerColorCubit>(context)
                       .changeColor(ContainerColor.Education);
                      },
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      width: 20,thickness: 2,color: currentColor ==ContainerColor.Education
                        ? Color(0xffE0EBFF)
                        : Colors.white,
                    ),
                  ),
                  ContainerColorIsCompleted(
                    title: S.of(context).PersonalDetails,
                    colorBorder: currentColor == ContainerColor.Experience
                        ? Color(0xff84A9FF)
                        : Color(0xffD1D5DB),
                    subTitle: S.of(context).FullNameEmailPhoneNumberAndyourAddress,
                    colorContainer:
                    currentColor == ContainerColor.Experience
                        ? Color(0xffE0EBFF)
                        : Colors.white,
                    colorIcon:
                    currentColor == ContainerColor.Experience
                        ? Colors.indigo
                        : Color(0xffD1D5DB), onTap: () {
                    ratioComplet=3;
                      BlocProvider.of<ContainerColorCubit>(context)
                      .changeColor(ContainerColor.Experience); },
                  ),
                  SizedBox(
                    height: 20,
                    child: VerticalDivider(
                      width: 20,thickness: 2,
                      color:  currentColor == ContainerColor.Experience
                          ? Color(0xffE0EBFF)
                          : Colors.white,
                    ),
                  ),
                  ContainerColorIsCompleted(
                    title: S.of(context).PortFolio,
                    colorBorder: currentColor == ContainerColor.Portfolio
                        ? Color(0xff84A9FF)
                        : Color(0xffD1D5DB),
                    subTitle:S.of(context).FullNameEmailPhoneNumberAndyourAddress,
                    colorContainer:
                    currentColor == ContainerColor.Portfolio
                        ? Color(0xffE0EBFF)
                        : Colors.white,
                    colorIcon:
                    currentColor == ContainerColor.Portfolio
                        ? Colors.indigo
                        : Color(0xffD1D5DB), onTap: () {
                    ratioComplet=4;
                      BlocProvider.of<ContainerColorCubit>(context)
                          .changeColor(ContainerColor.Portfolio);

                  },
                  ),

                ],
              ),
            );
          },
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
