import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

Widget NotifictionList(String nameNotification,String refreshData,Image iconJobConnection,String time,int index,context){
  return Container(
    height: 81.h,
    child: Column(
      children: [
        ListTile(
          minVerticalPadding: 0,
          minLeadingWidth:0,
          horizontalTitleGap: 10,
          leading: iconJobConnection,
          subtitle: Text(refreshData,style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400),),
          title:Text(nameNotification),
          trailing:Container(
            height: 20.h,
            width: 74.w,
            child: Row(
              children: [
                Icon(OctIcons.dot_fill_16,size: 15,color: Color(0xffDBB40E),),
                SizedBox(width: 2,),
                Text('12.39 AM',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400 ),),
              ],
            ),
          ),

        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: const Divider(
            thickness: 2,
            height: 1,
            endIndent: 10,
            color: Color(0xffE5E7EB),
          ),
        )
      ],
    ),
  );
}