
import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screan.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

 String valueTitle='';
 String valueLocation='';
 String valueSalary='';
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
        child: Container(

          width: double.infinity,
          child: Column(
              children: [
                // Add your custom content for the full-screen dialog
                // For example, you can use a ListView or any other widgets.
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                    Text(
                      S.of(context).SetFilter,
                      style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
                    const Text(
                      'JobTitle',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(height: 10.h),
                    CustomFilterTextField(
                      iconSet: const Icon(FontAwesomeIcons.briefcase,color: Colors.black,),
                      onSubmitted: (String value) {valueTitle=value;  },
                    ),
                    SizedBox(height: 15.h),
                    const Text(
                      'Location',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(height: 10.h),
                    CustomFilterTextField(
                      iconSet: const Icon(Icons.place_outlined,color: Colors.black,),
                      onSubmitted: (String value) { valueLocation=value; },
                    ),
                    SizedBox(height: 15.h),
                    const Text(
                      'Salary',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    SizedBox(height: 10.h),
                    DropdownButtonExample(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const Text(
                      'JoTybe',
                      style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
                          text: 'FullTime',
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
                          text: 'Remote',
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
                          text: 'Contract',
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,),
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
                          text: 'PartTime',
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
                          text: 'OnSite',
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
                        child: Text('Show Result'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            primary: const Color(0XFF3366FF)),
                        onPressed: () {
                          BlocProvider.of<FilterCubit>(context).fetchFilterJobs(valueTitle, );
                          setState((){
                            outPutFullOrRemoteButton;
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ),);

  }
}
















