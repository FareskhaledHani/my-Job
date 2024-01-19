import 'package:finalproject/Screens/search_screen/controller_seerch_filter.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Future<void> showFullScreenDialog(BuildContext context) async {
  final ControllerSearchFilter ControllerFilter =
      Get.put(ControllerSearchFilter());
  return showDialog(
    context: context,
    builder: (BuildContext context) {
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
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    Text(
                      'Set Filter',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Reset',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ))
                  ],
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     SizedBox(height: 20.h),
                //     Text(
                //       'JobTitle',
                //       style:
                //           TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                //     ),
                //     SizedBox(height: 10.h),
                //     BoxInSetFilter(
                //       onpressed: () {},
                //       iconSet: Icon(FontAwesomeIcons.briefcase),
                //     ),
                //     SizedBox(height: 15.h),
                //     Text(
                //       'Location',
                //       style:
                //           TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                //     ),
                //     SizedBox(height: 10.h),
                //     BoxInSetFilter(
                //       onpressed: () {},
                //       iconSet: Icon(Icons.place_outlined),
                //     ),
                //     SizedBox(height: 15.h),
                //     Text(
                //       'Salary',
                //       style:
                //           TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                //     ),
                //     SizedBox(height: 10.h),
                //     BoxInSetFilter(
                //       onpressed: () {},
                //       iconSet: Icon(Icons.monetization_on_outlined),
                //     ),
                //     SizedBox(
                //       height: 15.h,
                //     ),
                //     Text(
                //       'JoTybe',
                //       style:
                //           TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                //     ),
                //     SizedBox(
                //       height: 20.h,
                //     ),
                //     Row(
                //       children: [
                //         InkWell(
                //           onTap: () {
                //             ControllerFilter.changeColorContainer;
                //           },
                //           child: JobTybBoxFilter(
                //             name: 'FullTime',
                //             colorBoxBorder:
                //                 ControllerFilter.containerColorBorder,
                //             colorBox: ControllerFilter.containerColor,
                //           ),
                //         ),
                //         SizedBox(
                //           width: 10.w,
                //         ),
                //         Obx(
                //           () => InkWell(
                //             onTap: () {
                //               ControllerFilter.changeColorContainer;
                //             },
                //             child: Container(
                //               width: 107.w,
                //               height: 34.h,
                //               decoration: BoxDecoration(
                //                   border: Border.all(
                //                       width: 1,
                //                       color: ControllerFilter
                //                           .containerColorBorder.value),
                //                   color: ControllerFilter.containerColor.value,
                //                   borderRadius: BorderRadius.circular(20)),
                //               child: Center(child: Text("Remote")),
                //
                //               // child: JobTybBoxFilter(
                //               //   name: 'Remote', colorBoxBorder: ControllerFilter.containerColorBorder, colorBox: ControllerFilter.containerColor,
                //             ),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 10.w,
                //         ),
                //         InkWell(
                //           onTap: () {
                //             ControllerFilter.changeColorContainer;
                //           },
                //           child: JobTybBoxFilter(
                //             name: 'contract',
                //             colorBoxBorder:
                //                 ControllerFilter.containerColorBorder,
                //             colorBox: ControllerFilter.containerColor,
                //           ),
                //         ),
                //       ],
                //     ),
                //     SizedBox(
                //       height: 20.h,
                //     ),
                //     Row(
                //       children: [
                //         InkWell(
                //           onTap: () {
                //             ControllerFilter.changeColorContainer;
                //           },
                //           child: JobTybBoxFilter(
                //             name: 'PartTime',
                //             colorBoxBorder:
                //                 ControllerFilter.containerColorBorder,
                //             colorBox: ControllerFilter.containerColor,
                //           ),
                //         ),
                //         SizedBox(
                //           width: 10.w,
                //         ),
                //         InkWell(
                //             onTap: () {
                //               ControllerFilter.changeColorContainer;
                //             },
                //             child: JobTybBoxFilter(
                //               name: 'OnSite',
                //               colorBoxBorder:
                //                   ControllerFilter.containerColorBorder,
                //               colorBox: ControllerFilter.containerColor,
                //             )),
                //         SizedBox(
                //           width: 10.w,
                //         ),
                //         InkWell(
                //           onTap: () {
                //             ControllerFilter.changeColorContainer;
                //           },
                //           child: JobTybBoxFilter(
                //             name: 'InternShip',
                //             colorBoxBorder:
                //                 ControllerFilter.containerColorBorder,
                //             colorBox: ControllerFilter.containerColor,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 100.h,
                ),
                nextButton(
                    buttonText: 'ShowResult',
                    onpressed: () {

                    })
              ],
            ),
          ),
        ),
      );
    },
  );
}

