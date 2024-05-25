import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';

class NONewNotifiction extends StatelessWidget {
  const NONewNotifiction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20).w,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 140.h),
            Image.asset('images/home_screen/notification/Notification Ilustration.png'),
            Text(S.of(context).NoNewNotificationsYet,style:  const TextStyle(fontWeight:FontWeight.w500 ,fontSize:24 ,color:Color(0xff111827) ), textAlign: TextAlign.center,),
            SizedBox(height: 10.h,),
            Text(S.of(context).YouWillReceiveANotificationIfThereIsSomethingOnyourAccount,style:  const TextStyle(fontWeight:FontWeight.w400 ,fontSize:16 ,color:Color(0xff6B7280) ), textAlign: TextAlign.center,),
            SizedBox(height: 220.h,),

          ],
        ),
      ),
    );
  }
}
