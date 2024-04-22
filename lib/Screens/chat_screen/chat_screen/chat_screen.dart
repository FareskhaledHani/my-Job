import 'package:finalproject/Screens/chat_screen/chat_screen/show_dialog_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_octicons/flutter_octicons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../generated/l10n.dart';
import '../../home_screen/constant.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
       titleTextStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.black),
        leadingWidth: 40.w,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Row(children: [ CircleAvatar(
          child: Image.asset(
            'images/home_screen/messages/Facebook Logo.png',scale: 1.4,), minRadius: 0,
        ), SizedBox(
          width: 15.w,
        ),
          Text(
            'Twitter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),],),
        actions: [IconButton(
            onPressed: () {ShowDialogScreen(context);},
            icon: Icon(Ionicons.ellipsis_horizontal_outline,)),],
      ),
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(topRight:Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                      ),
                      child: Text('jkdhkjsjkdhkjsjkdhkjsjkdhkjsjkdhkjs       dhkjh  dhkjh  dhkjh  dhkjh  dhkjh  dhkjh'),
                    ),
                  );
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20).r,
              child: SizedBox(
                height: 45.h,
                child: Row(children: [
                  IconCircle(icon: FontAwesomeIcons.paperclip, ontap: () {  },),
                  SizedBox(width: 10.w,),
                  Container(
                    width: 255.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Color(0xffFAFAFA)
                    ),
                    child: TextField(
                      // cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60.0),
                      ),
                        hoverColor: Colors.blue,
                        focusColor: Colors.blue,
                        labelText: S.of(context).WriteAMessage,
                        labelStyle: TextStyle(color: Color(0xff9CA3AF)),
                    ),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  IconCircle(icon: FontAwesomeIcons.microphone, ontap: () {  },),
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}


