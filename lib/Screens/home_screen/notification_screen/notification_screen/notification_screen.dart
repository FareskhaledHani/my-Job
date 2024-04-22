import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';
import '../components/custum_widget.dart';
import '../model/model.dart';
import 'nothing_notification.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () { Get.back();},
            );
          },
        ) ,
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title:  Text(S.of(context).Notification, style: const TextStyle(
            fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),),
        elevation: 0,
      ) ,
      body: Column(
        children: [
          Container(
            height: 35.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xffE5E7EB),
            ),

            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal:20 ,vertical:10 ),
              child: Text(S.of(context).New,style: const TextStyle(color: Color(0xff6B7280)),
              ),
            ),
          ),
          SizedBox(
            height: 350.h,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(itemCount:notificationList.length,itemBuilder: (BuildContext context, int index) {
              return NotifictionList(notificationList[index].titleNotification,notificationList[index].subtTitleNotification,notificationList[index].imageLeading,notificationList[index].time ,index,context);
            },),
          ),
          Container(
            height: 35.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xffE5E7EB),
            ),

            child: Padding(
              padding:const EdgeInsets.symmetric(horizontal:20 ,vertical:10 ),
              child: InkWell(
                onTap: (){Get.to(()=>const NONewNotifiction());},
                child: Text(S.of(context).Yesterday,style: const TextStyle(color: Color(0xff6B7280)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  List<NotificationScreenModel>notificationList=[
    NotificationScreenModel(titleNotification: 'Dana', subtTitleNotification: 'Posted new design jobs', time: '10.00AM', iconTime: Icons.access_alarm, imageLeading: Image.asset('images/home_screen/notification/Dana Logo.png')),
    NotificationScreenModel(titleNotification: 'Dana', subtTitleNotification: 'Posted new design jobs', time: '10.00AM', iconTime: Icons.access_alarm, imageLeading: Image.asset('images/home_screen/notification/Dana Logo.png')),
    NotificationScreenModel(titleNotification: 'Dana', subtTitleNotification: 'Posted new design jobs', time: '10.00AM', iconTime: Icons.access_alarm, imageLeading: Image.asset('images/home_screen/notification/Dana Logo.png')),
    NotificationScreenModel(titleNotification: 'Dana', subtTitleNotification: 'Posted new design jobs', time: '10.00AM', iconTime: Icons.access_alarm, imageLeading: Image.asset('images/home_screen/notification/Dana Logo.png')),
  ];
}
