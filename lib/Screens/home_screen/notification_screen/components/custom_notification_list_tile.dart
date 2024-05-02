import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget notificationListTile(
    String nameNotification, String subTitle, String time,int index, context) {
  return SizedBox(
    height: 81.h,
    child: Column(
      children: [
        ListTile(
          minVerticalPadding: 0,
          minLeadingWidth: 0,
          horizontalTitleGap: 10,
          leading: Image.asset(
            'images/home_screen/notification/Notification Ilustration.png',
            width: 40.w,
            height: 40.h,
            scale: 0.02,
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
          ),
          title: Text(nameNotification),
          trailing: SizedBox(
            height: 20.h,
            width: 84.w,
            child: Row(
              children: [
                Icon(
                  OctIcons.dot_fill_16,
                  size: 15.sp,
                  color: const Color(0xffDBB40E),
                ),
                SizedBox(
                  width: 2.w,
                ),
                SizedBox(
                  width: 67.w,
                  child: Text(
                    time,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),maxLines: 1,overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child:  Divider(
            thickness: 2.h,
            height: 1.h,
            endIndent: 10,
            color: const Color(0xffE5E7EB),
          ),
        )
      ],
    ),
  );
}
