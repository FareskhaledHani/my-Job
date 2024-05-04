import 'package:finalproject/Screens/home_screen/search_screen/viwes/result_filter_screen.dart';
import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screan.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../generated/l10n.dart';
import '../../component/custom_change_color_container.dart';
import '../../component/custom_drop_down_button.dart';
import '../../component/custom_filter_text_field.dart';
import '../cubits/filter_cubit/filter_cubit.dart';

class FullDialogContent extends StatefulWidget {
  const FullDialogContent({
    Key? key,
  }) : super(key: key);

  @override
  State<FullDialogContent> createState() => _FullDialogContentState();
}

bool trueFullButton = false;
bool trueRemoteButton = false;
bool trueContractButton = false;
bool truePartButton = false;
bool trueOnSiteButton = false;
bool trueInternShipButton = false;

class _FullDialogContentState extends State<FullDialogContent> {
  TextEditingController titleController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  bool shouldReload = false;
  String valueTitle = '';
  String valueLocation = '';
  String valueSalary = '';

  void reloadFutureBuilder() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        shouldReload = !shouldReload; // Toggle the state variable
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      insetPadding: EdgeInsets.only(top: 40.h),
      // Remove padding around the dialog
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                Text(
                  S.of(context).SetFilter,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      S.of(context).Reset,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                    ))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text(
                  S.of(context).JobTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                SizedBox(height: 10.h),
                CustomFilterTextField(
                  iconSet: const Icon(
                    FontAwesomeIcons.briefcase,
                    color: Colors.black,
                  ),
                  controller: titleController,
                  validator: (String) {},
                ),
                SizedBox(height: 15.h),
                Text(
                  S.of(context).Location,
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                SizedBox(height: 10.h),
                CustomFilterTextField(
                  iconSet: const Icon(
                    Icons.place_outlined,
                    color: Colors.black,
                  ),
                  validator: (String) {},
                  controller: locationController,
                ),
                SizedBox(height: 15.h),
                Text(
                  S.of(context).Salary,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(height: 10.h),
                DropdownButtonExample(),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  S.of(context).JobType,
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),

                Row(
                  children: [
                    CustomChangeColorContainer(
                      OnTap: () {
                        setState(() {
                          trueFullButton = !trueFullButton;
                        });
                      },
                      containerColor: (trueFullButton == false)
                          ? Colors.white
                          : const Color(0xffD6E4FF),
                      borderContainerColor: (trueFullButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      textColor: (trueFullButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      text: S.of(context).FullTime,
                    ),
                    CustomChangeColorContainer(
                      OnTap: () {
                        setState(() {
                          trueRemoteButton = !trueRemoteButton;
                        });
                      },
                      containerColor: (trueRemoteButton == false)
                          ? Colors.white
                          : const Color(0xffD6E4FF),
                      borderContainerColor: (trueRemoteButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      textColor: (trueRemoteButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      text: S.of(context).Remote,
                    ),
                    CustomChangeColorContainer(
                      OnTap: () {
                        setState(() {
                          trueContractButton = !trueContractButton;
                        });
                      },
                      containerColor: (trueContractButton == false)
                          ? Colors.white
                          : const Color(0xffD6E4FF),
                      borderContainerColor: (trueContractButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      textColor: (trueContractButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      text: S.of(context).Contract,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    CustomChangeColorContainer(
                      OnTap: () {
                        setState(() {
                          truePartButton = !truePartButton;
                        });
                      },
                      containerColor: (truePartButton == false)
                          ? Colors.white
                          : const Color(0xffD6E4FF),
                      borderContainerColor: (truePartButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      textColor: (truePartButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      text: S.of(context).PartTime,
                    ),
                    CustomChangeColorContainer(
                      OnTap: () {
                        setState(() {
                          trueOnSiteButton = !trueOnSiteButton;
                        });
                      },
                      containerColor: (trueOnSiteButton == false)
                          ? Colors.white
                          : const Color(0xffD6E4FF),
                      borderContainerColor: (trueOnSiteButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      textColor: (trueOnSiteButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      text: S.of(context).OnSite,
                    ),
                    CustomChangeColorContainer(
                      OnTap: () {
                        setState(() {
                          trueInternShipButton = !trueInternShipButton;
                        });
                      },
                      containerColor: (trueInternShipButton == false)
                          ? Colors.white
                          : const Color(0xffD6E4FF),
                      borderContainerColor: (trueInternShipButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      textColor: (trueInternShipButton == false)
                          ? const Color(0xffD1D5DB)
                          : const Color(0xff3366FF),
                      text: 'InternShip',
                    ),
                  ],
                ),

                SizedBox(
                  height: 90.h,
                ),
                //nextButton(buttonText: buttonText, onpressed: onpressed),
                SizedBox(
                  height: 48.h,
                  width: double.infinity,
                  //width: 380.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: const Color(0XFF3366FF)),
                    onPressed: () {
                      BlocProvider.of<FilterCubit>(context).fetchFilterJobs(
                        valueTitle,
                      );
                      Future.delayed(const Duration(seconds: 1), () {
                        reloadFutureBuilder();
                        Navigator.pop(context);
                        // Navigator.pop(context);
                      });
                      // Get.to(()=>  ResultFilterScreen(valueTitle: valueTitle, valueLocation:valueLocation, valueSalary: '',));
                    },
                    child: Text(S.of(context).ShowResult),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
