import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import '../../../generated/l10n.dart';
import '../../home_screen/component/custum_widget.dart';


Future<void> ShowDialogScreen(BuildContext context) async {

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        insetPadding: EdgeInsets.only(top: 220.h),
        // Remove padding around the dialog
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 20.h,),
                MiniDialogIcon(textButtonDialog: S.of(context).VisitJobPost, ontap: () {  },iconButtonDialog:Ionicons.bag_handle_outline ,),
                SizedBox(height: 20.h,),
                MiniDialogIcon(ontap: () {  }, textButtonDialog: S.of(context).ViewMyApplication,iconButtonDialog:FontAwesomeIcons.clipboard ,),
                SizedBox(height: 20.h,),
                MiniDialogIcon(textButtonDialog: S.of(context).MarkAsUnread, ontap: () {  },iconButtonDialog: Ionicons.mail_outline,),
                SizedBox(height: 20.h,),
                MiniDialogIcon(textButtonDialog: S.of(context).Mute,iconButtonDialog: Ionicons.notifications_outline, ontap: () {  },),
                SizedBox(height: 20.h,),
                MiniDialogIcon(textButtonDialog: S.of(context).Archive, ontap: () {  },iconButtonDialog: FontAwesomeIcons.download,),
                SizedBox(height: 20.h,),
                MiniDialogIcon(textButtonDialog: S.of(context).DeleteConversation, ontap: () {  },iconButtonDialog: FontAwesomeIcons.trashCan,),

              ],
            ),
          ),
        ),
      );
    },
  );
}