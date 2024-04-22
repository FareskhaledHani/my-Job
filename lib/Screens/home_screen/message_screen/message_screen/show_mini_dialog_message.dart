import 'package:finalproject/Screens/home_screen/message_screen/message_screen/un_read_messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';




Future<void> ShowMiniScreenDailogMessage(BuildContext context) async {

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        insetPadding: EdgeInsets.only(top: 420.h),
        // Remove padding around the dialog
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(S.of(context).MessageFilters,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff111827)),),
              ),
              MessageFiltersWidget(title: S.of(context).Unread, ontap: () { Get.to(()=>UnRead()); },),
              SizedBox(height: 10.h,),
              MessageFiltersWidget(title: S.of(context).Spam, ontap: () {  },),
              SizedBox(height: 10.h,),
              MessageFiltersWidget(title: S.of(context).Archived, ontap: () {  },),
            ],
          ),
        ),
      );
    },
  );
}

class MessageFiltersWidget extends StatelessWidget {
  const MessageFiltersWidget({
    Key? key,required this.ontap,required this.title
  }) : super(key: key);
 final VoidCallback ontap;
 final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: const Color(0xffD1D5DB))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0).w,
        child: InkWell(
          onTap: ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:16.sp ,color: const Color(0xff374151)),),
              const Icon(
                Icons.navigate_next,
                color: Colors.black,
                size: 25,
              ),
          ],),
        ),
      ),
    );
  }
}