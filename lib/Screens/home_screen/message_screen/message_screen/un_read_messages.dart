import 'package:finalproject/Screens/home_screen/message_screen/message_screen/show_mini_dialog_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/custum_search_box.dart';
import '../../../../generated/l10n.dart';


class UnRead extends StatelessWidget {
  const UnRead({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0).w,
            child: Row(
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
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 40.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xffE5E7EB),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).Unread,
                    style: const TextStyle(color: Color(0xff6B7280)),
                  ),
                  TextButton( onPressed: () {  }, child: Text(S.of(context).ReadAllMessages),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}