import 'package:finalproject/Screens/home_screen/message_screen/message_screen/show_mini_dialog_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/custum_search_box.dart';
import '../../../../generated/l10n.dart';


class NoMessagesScreen extends StatelessWidget {
  const NoMessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          S.of(context).Messages,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0).w,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                    width: 330.w,
                    height: 60.h,
                    child: SearchBox(
                      onpressed: () {},
                      titleSearch: S.of(context).SearchMessages,
                    )),
                IconButton(
                    onPressed: () {
                      ShowMiniScreenDailogMessage(context);
                    },
                    icon: const Icon(Icons.menu)),
              ],
            ),
            SizedBox(height: 100.h),
            Image.asset('images/home_screen/messages/Data Ilustration (1).png'),
            Text(S.of(context).YouHaveNotReceivedAnyMessages,style: const TextStyle(fontWeight:FontWeight.w500 ,fontSize:24 ,color:Color(0xff111827) ), textAlign: TextAlign.center,),
            SizedBox(height: 10.h,),
            Text(S.of(context).OnceYourApplicationHasReachedTheInterviewStageYouWillGetAMessageFromTheRecruiter,style: TextStyle(fontWeight:FontWeight.w400 ,fontSize:16.sp ,color:const Color(0xff6B7280) ), textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}
