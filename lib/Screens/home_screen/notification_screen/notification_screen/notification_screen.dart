import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';
import '../components/custom_notification_list_tile.dart';
import '../model/model.dart';
import '../services/services_notification.dart';
import 'nothing_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  ApiServicesNotification apiServicesNotification = ApiServicesNotification();
  NotificationsJobModel?  notificationsJobModel ;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 0), () async{
      notificationsJobModel=await apiServicesNotification.getNotificationJob();
    });
  }

  @override
  Widget build(BuildContext context) {
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
          S.of(context).Notification,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: FutureBuilder<NotificationsJobModel>(
          future: ApiServicesNotification().getNotificationJob(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: NONewNotifiction());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final notificationJob = snapshot.data!;
              return Column(
                children: [
                  Container(
                    height: 35.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xffE5E7EB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        S.of(context).New,
                        style: const TextStyle(color: Color(0xff6B7280)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 350.h,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return
                          notificationListTile(
                              notificationJob.name,
                              notificationJob.lastMessage,
                            notificationJob.updateTime,
                            index,
                            context);
                      },
                    ),
                  ),
                  Container(
                    height: 35.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xffE5E7EB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: InkWell(
                        onTap: () {
                          Get.to(() => const NONewNotifiction());
                        },
                        child: Text(
                          S.of(context).Yesterday,
                          style: const TextStyle(color: Color(0xff6B7280)),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }

  // List<NotificationScreenModel> notificationList = [
  //   NotificationScreenModel(
  //       titleNotification: 'Dana',
  //       subtTitleNotification: 'Posted new design jobs',
  //       time: '10.00AM',
  //       iconTime: Icons.access_alarm,
  //       imageLeading:
  //           Image.asset('images/home_screen/notification/Dana Logo.png')),
  //   NotificationScreenModel(
  //       titleNotification: 'Dana',
  //       subtTitleNotification: 'Posted new design jobs',
  //       time: '10.00AM',
  //       iconTime: Icons.access_alarm,
  //       imageLeading:
  //           Image.asset('images/home_screen/notification/Dana Logo.png')),
  //   NotificationScreenModel(
  //       titleNotification: 'Dana',
  //       subtTitleNotification: 'Posted new design jobs',
  //       time: '10.00AM',
  //       iconTime: Icons.access_alarm,
  //       imageLeading:
  //           Image.asset('images/home_screen/notification/Dana Logo.png')),
  //   NotificationScreenModel(
  //       titleNotification: 'Dana',
  //       subtTitleNotification: 'Posted new design jobs',
  //       time: '10.00AM',
  //       iconTime: Icons.access_alarm,
  //       imageLeading:
  //           Image.asset('images/home_screen/notification/Dana Logo.png')),
  // ];
}
