import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../generated/l10n.dart';
import '../../component/custum_widget.dart';

Future<void> showMiniScreenDialogSave(BuildContext context) async {

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
            children: [
              SizedBox(height: 20.h,),
              MiniDialogIcon(textButtonDialog: S.of(context).AppliedJob, iconButtonDialog: Icons.shopping_bag_rounded, ontap: () {  },),
              SizedBox(height: 10.h,),
              MiniDialogIcon(textButtonDialog: S.of(context).ShareVia, iconButtonDialog: Icons.ios_share_rounded, ontap: () {  },),
              SizedBox(height: 10.h,),
              MiniDialogIcon(textButtonDialog: S.of(context).CancelSave, iconButtonDialog: FontAwesomeIcons.bookmark, ontap: () {  },),

            ],
          ),
        ),
      );
    },
  );
}


