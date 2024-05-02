import 'package:finalproject/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import '../../../components/custum_title_in_cotainer.dart';
import '../../../constant/constants.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {


  late List<String> selectNotification=[] ;
  late List<String> selectedOtherNotification=[] ;
  @override
  Widget build(BuildContext context) {
       List<Map<String, String>> otherNotification = [
      {'name': S.of(context).ShowProfile},
      {'name': S.of(context).AllMessage},
      {'name': S.of(context).MessageNudges},
    ];
     List<Map<String,String>> notificationList = [
      {'name': S.of(context).YourJobSearchAlert},
      {'name': S.of(context).JobApplicationUpdate},
      {'name': S.of(context).JobApplicationReminders},
      {'name': S.of(context).JobsYouMayBeInterestedIn},
      {'name': S.of(context).JobSeekerUpdates},
    ];

    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Get.back();
          },
        ),
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          S.of(context).Notification,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            TitleInContainer(
              title: S.of(context).JobNotification,
            ),
            Expanded(
              flex: 5,
              child: ListView.builder(
                itemCount: notificationList.length,
                itemBuilder: (BuildContext context, int index) {
                  final language = notificationList[index];
                  final String languageName = language['name']!;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(languageName),
                            FlutterSwitch(
                              width: 60.w,
                              height: 30.h,
                              toggleColor: const Color(0xffD6E4FF),
                              toggleSize: 25,
                              borderRadius: 30,
                              padding: 3,
                              value: selectNotification.contains(languageName),
                              onToggle: (val) {
                                setState(() {
                                  if (val) {
                                    selectNotification.add(languageName);
                                  } else {
                                    selectNotification.remove(languageName);
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.h,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            TitleInContainer(
              title: S.of(context).OtherNotification,
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: otherNotification.length,
                itemBuilder: (BuildContext context, int index) {
                  final selectOther = otherNotification[index];
                  final String languageName = selectOther['name']!;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(languageName),
                            FlutterSwitch(
                              width: 60.w,
                              height: 30.h,
                              toggleColor: const Color(0xffD6E4FF),
                              toggleSize: 20,
                              borderRadius: 30,
                              value: selectedOtherNotification.contains(languageName),
                              onToggle: (val) {
                                setState(() {
                                  if (val) {
                                    selectedOtherNotification.add(languageName);
                                  } else {
                                    selectedOtherNotification.remove(languageName);
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 1.h,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget notificationSwitch(
  //     BuildContext context, Map<String, String> language) {
  //   final String languageName = language['name']!;
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  //     child: Column(
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(languageName),
  //             FlutterSwitch(
  //               width: 60.w,
  //               height: 30.h,
  //               toggleColor: const Color(0xffD6E4FF),
  //               toggleSize: 25,
  //               borderRadius: 30,
  //               padding: 3,
  //               value: selectNotification.contains(languageName),
  //               onToggle: (val) {
  //                 setState(() {
  //                   if (val) {
  //                     selectNotification.add(languageName);
  //                   } else {
  //                     selectNotification.remove(languageName);
  //                   }
  //                 });
  //               },
  //             ),
  //           ],
  //         ),
  //         Divider(
  //           thickness: 1.h,
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  //
  // Widget otherNotificationSwitch(
  //     BuildContext context, Map<String, String> selectOther) {
  //   final String languageName = selectOther['name']!;
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Text(languageName),
  //           FlutterSwitch(
  //             width: 60.w,
  //             height: 30.h,
  //             toggleColor: const Color(0xffD6E4FF),
  //             toggleSize: 20,
  //             borderRadius: 30,
  //             value: selectedOtherNotification.contains(languageName),
  //             onToggle: (val) {
  //               setState(() {
  //                 if (val) {
  //                   selectedOtherNotification.add(languageName);
  //                 } else {
  //                   selectedOtherNotification.remove(languageName);
  //                 }
  //               });
  //             },
  //           ),
  //         ],
  //       ),
  //       Divider(
  //         thickness: 1.h,
  //       ),
  //     ],
  //   );
  // }


}


