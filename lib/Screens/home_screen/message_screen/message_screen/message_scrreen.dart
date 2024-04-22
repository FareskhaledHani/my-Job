import 'package:finalproject/Screens/home_screen/message_screen/message_screen/show_mini_dialog_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../components/custum_search_box.dart';
import '../../../../generated/l10n.dart';
import '../../../chat_screen/chat_screen/chat_screen.dart';
import '../../component/custum_widget.dart';
import '../../constant.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

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
                Container(
                    width: 330.w,
                    height: 60.h,
                    child: SearchBox(
                      onpressed: () {},
                      titleSearch: S.of(context).SearchMessages,
                    )),
                SizedBox(width: 10.w,),
                IconCircle(icon: Ionicons.options, ontap: () { ShowMiniScreenDailogMessage(context);  },),
                // IconButton(
                //     onPressed: () {
                //       ShowMiniScreenDailogMessage(context);
                //     },
                //     icon: Icon(Ionicons.options)),
              ],
            ),
          ),
          SizedBox(
            height: 400.h,
            child: ListView.builder(
              itemCount: messagesList.length,
              itemBuilder: (BuildContext context, int index) {
                return MessagesList(messagesList[index],(){Get.to(()=>ChatScreen());});
              },
            ),
          ),
        ],
      ),
    );
  }
}


