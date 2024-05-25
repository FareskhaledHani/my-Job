import 'package:finalproject/Screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/cash_helper.dart';
import '../../../../generated/l10n.dart';

class LogOutAlertDialog extends StatelessWidget {
  const LogOutAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 3,
      title:  Center(child: Text(S.of(context).LogOutOfYourAccount,style: TextStyle(fontSize: 18.sp),)),
      actions: [
        TextButton(
          onPressed: () {
            // Action to perform when the first button is pressed
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text(S.of(context).Cancel),
        ),
        TextButton(
          onPressed: () {
            CacheHelper.removeLoginData();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>  const LoginScreen(),
              ),);
            // Action to perform when the second button is pressed
          },
          child: Text(S.of(context).LogOut,style: const TextStyle(color: Colors.red),),
        ),
      ],
    );
  }
}
