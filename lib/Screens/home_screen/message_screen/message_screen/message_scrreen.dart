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
import '../models/model.dart';
import '../servises_messages/services_messages.dart';

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
              onPressed: () {},
            );
          },
        ),
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
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
                SizedBox(
                  width: 10.w,
                ),
                IconCircle(
                  icon: Ionicons.options,
                  ontap: () {
                    ShowMiniScreenDailogMessage(context);
                  },
                ),
                // IconButton(
                //     onPressed: () {
                //       ShowMiniScreenDailogMessage(context);
                //     },
                //     icon: Icon(Ionicons.options)),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder<List<MessageData>>(
              future: GetMessagesService().getMessagesJob(),
              builder: (BuildContext context, AsyncSnapshot<List<MessageData>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Text(
                    'Error: ${snapshot.error}',
                    style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
                  );
                } else {
                  final List<MessageData>? messagesJob = snapshot.data;
                  if (messagesJob == null || messagesJob.isEmpty) {
                    return const Center(child: Text('No messages available'));
                  }
                  return ListView.builder(
                    itemCount: messagesJob.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 81.h,
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                Get.to(()=>ChatScreen(title: (messagesJob[index].name)));
                              },
                              leading:  IconNotification(count: messagesJob.length, image: '', onTap: () {  },),
                              title: Text(messagesJob[index].name),
                              subtitle: Text(
                                messagesJob[index].about,
                                style: TextStyle(
                                    color: const Color(0xff6B7280), fontSize: 12.sp, fontWeight: FontWeight.w400),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: Text(
                                '12.39',
                                maxLines: 1,
                                style: TextStyle(color: Colors.blue, fontSize: 12.sp, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 90.w),
                              child: const Divider(
                                thickness: 2,
                                height: 1,
                                endIndent: 20,
                                color: Color(0xffE5E7EB),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            )
          ),
        ],
      ),
    );
  }
}
