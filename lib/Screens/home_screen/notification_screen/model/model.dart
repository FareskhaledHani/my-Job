import 'package:flutter/material.dart';

class NotificationScreenModel{
  String titleNotification;
  String subtTitleNotification;
  String time;
  IconData iconTime;
  Image imageLeading;
  NotificationScreenModel({required this.titleNotification,required this.subtTitleNotification, required this.time,required this.iconTime,required this.imageLeading});
}