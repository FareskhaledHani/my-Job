import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:ionicons/ionicons.dart';

import '../../../components/custum_phone_field.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

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
        title:  Text(
          S.of(context).EditProfile,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      backgroundColor: KPrimaryBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30).w,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: CircleAvatar(
                     child: Image.asset('images/home_screen/profile/Profile.png'),
                      radius: 40,
                    ),
                  ),
                  Positioned(
                      child: IconButton(onPressed: () {  }, icon: Icon(Ionicons.camera_outline,color: Colors.white,size: 30,),))
                ],
              ),
            ),
            Center(child: TextButton(onPressed: (){}, child: Text(S.of(context).ChangePhoto,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),))),
             SizedBox(height: 10.h,),
             Expanded(
               child: ListView(children: [
                 Text(S.of(context).Name,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: Color(0xff9CA3AF)),),
                 SizedBox(height: 5.h),
                 FieldUsedHint(),
                 SizedBox(height: 10.h,),
                 Text(S.of(context).Bio,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: Color(0xff9CA3AF)),),
                 SizedBox(height: 5.h),
                 FieldUsedHint(),
                 SizedBox(height: 10.h,),
                 Text(S.of(context).Address,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: Color(0xff9CA3AF)),),
                 SizedBox(height: 10.h),
                 FieldUsedHint(),
                 SizedBox(height: 10.h,),
                 Text(S.of(context).NoHandphone,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: Color(0xff9CA3AF)),),
                 SizedBox(height: 5.h),
                 CustumPhoneField(onchange: (phone) {   print(phone.completeNumber); },),
                 Padding(
                   padding: const EdgeInsets.only(top: 70.0).h,
                   child: Center(child: nextButton(buttonText: S.of(context).Save, onpressed: (){})),
                 )
               ],),
             ),
            // Stack(children:[ Positioned(
            //    bottom: 10,
            //     child:nextButton(buttonText: 'Save', onpressed: (){}))])

          ],
        ),
      ),
    );
  }
}



class FieldUsedHint extends StatelessWidget {
  const FieldUsedHint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          // suffixIcon: iconDown,
          border:OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),),),)
    );
  }
}
