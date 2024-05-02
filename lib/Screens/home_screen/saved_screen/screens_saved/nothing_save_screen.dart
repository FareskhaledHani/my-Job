import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';

class NoBodySaved extends StatelessWidget {
  const NoBodySaved({Key? key}) : super(key: key);

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
            Image.asset('images/home_screen/saved/Saved Ilustration.png'),
            Text(S.of(context).NothingHasBeenSavedYet,style: const TextStyle(fontWeight:FontWeight.w500 ,fontSize:24 ,color:Color(0xff111827) ), textAlign: TextAlign.center,),
            SizedBox(height: 10.h,),
            Text(S.of(context).PressTheStarIconOnTheJobYouWantToSave,style: const TextStyle(fontWeight:FontWeight.w400 ,fontSize:16 ,color:Color(0xff6B7280) ), textAlign: TextAlign.center,),
            SizedBox(height: 220.h,),

          ],
        ),
      ),
    );
  }
}
