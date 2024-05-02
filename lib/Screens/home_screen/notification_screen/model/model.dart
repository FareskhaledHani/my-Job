import 'package:flutter/material.dart';

// class NotificationScreenModel{
//   String titleNotification;
//   String subtTitleNotification;
//   String time;
//   IconData iconTime;
//   Image imageLeading;
//   NotificationScreenModel({required this.titleNotification,required this.subtTitleNotification, required this.time,required this.iconTime,required this.imageLeading});
// }


class NotificationsJobModel{
  final String name;
  final String lastMessage;
  final String updateTime;
  // final String salary;
  NotificationsJobModel( {required this.name,required this.updateTime,required this.lastMessage});
  factory NotificationsJobModel.fromJson(Map<String,dynamic> json){
    return NotificationsJobModel(
      name: json['comp_name']??'',
      lastMessage: json['last_massage']??'',
       updateTime: json['updated_at']??'',
      // salary: json['salary']??'',
    );
  }
}





//{
//     "status": true,
//     "data": {
//         "id": 1,
//         "user_id": "1",
//         "comp_id": "1",
//         "comp_name": "amit",
//         "user_name": "super admin",
//         "last_massage": "ahmedddlkdkdkdkd",
//         "created_at": "2023-09-06T12:40:41.000000Z",
//         "updated_at": "2024-04-15T04:13:54.000000Z"
//     }
// }