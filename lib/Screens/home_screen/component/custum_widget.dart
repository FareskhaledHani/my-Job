import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

import '../constant.dart';
import '../message_screen/models/model.dart';

class MiniDialogIcon extends StatelessWidget {
  const MiniDialogIcon(
      {Key? key,
      this.iconButtonDialog,
      required this.textButtonDialog,
      required this.ontap})
      : super(key: key);
  final String textButtonDialog;
  final dynamic iconButtonDialog;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 1, color: Color(0xffD1D5DB))),
      child: ListTile(
        title: Text(textButtonDialog),
        onTap: ontap,
        trailing: Icon(
          Icons.navigate_next,
          color: Colors.black,
        ),
        leading: Icon(iconButtonDialog, color: Colors.black),
        minLeadingWidth: 0,
      ),
    );
  }
}

class IconNotification extends StatelessWidget {
  final int count;
  final Function onTap;
  final String image ;

  IconNotification({Key? key, required this.count, required this.onTap,required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          child: IconCircle(icon:  Ionicons.notifications_outline, ontap: () {  },),
        ),
        count > 0
            ? Positioned(
          top: 0,
                left: 0.w,
                child: Container(
                  padding:const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color:Colors.blue,
                  ),
                  child: Text(
                    count >9 ?'+9': count.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
  Widget MessagesList(
      MessagesModel messagesCard,ontap
      ){
  return Container(
    height: 81.h,
    child:Column(
      children: [
        ListTile(
          onTap: ontap,
          leading:IconNotification(count: 2, onTap: (){}, image: messagesCard.imageLeading,),
          title: Text(messagesCard.title),
          subtitle: Text(messagesCard.subtitle,style: TextStyle(color:Color(0xff6B7280),fontSize: 12.sp,fontWeight: FontWeight.w400 ),),
          trailing: Text('12.39',style: TextStyle(color:Colors.blue,fontSize: 12.sp,fontWeight: FontWeight.w400 ),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90).w,
          child: const Divider(
            thickness: 2,
            height: 1,
            endIndent: 20,
            color: Color(0xffE5E7EB),
          ),
        )
      ],
    ) ,
  );
  }

List<MessagesModel>messagesList=[
  MessagesModel(title: 'FaceBook', imageLeading: 'images/home_screen/messages/Shoope Logo.png', subtitle: 'You: What about the interview stage?', trading: '09.45'),
  MessagesModel(title: 'FaceBook', imageLeading: 'images/home_screen/messages/Shoope Logo.png', subtitle: 'You: What about the interview stage?', trading: '09.45'),
  MessagesModel(title: 'FaceBook', imageLeading: 'images/home_screen/messages/Shoope Logo.png', subtitle: 'You: What about the interview stage?', trading: '09.45'),
  MessagesModel(title: 'FaceBook', imageLeading: 'images/home_screen/messages/Shoope Logo.png', subtitle: 'You: What about the interview stage?', trading: '09.45'),
  MessagesModel(title: 'FaceBook', imageLeading: 'images/home_screen/messages/Facebook Logo.png', subtitle: 'You: What about the interview stage?', trading: '09.45'),
];

