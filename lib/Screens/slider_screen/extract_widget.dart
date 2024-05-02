import 'package:finalproject/Screens/reset_account/create_new_password_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';

import '../../generated/l10n.dart';





class RichTextExtractWidget extends StatelessWidget {
  const RichTextExtractWidget({

    Key? key,required this.Text1,required this.Text2,required this.Text3
  }) : super(key: key);
  final String ?Text1;
  final String ?Text2;
  final String ?Text3;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text:Text1 ,
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
          children: <TextSpan>[
            TextSpan(
                text:Text2,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: Text3,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ))
          ]),
    );
  }
}



class AppLogoAndBackButton extends StatelessWidget {
  const AppLogoAndBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            }, icon: const Icon(Icons.keyboard_backspace)),
        Padding(
          padding: const EdgeInsets.only(right: 20).w,
          child: Image.asset('images/slider/J BSQUE .jpg'),
        ),
      ],
    );
  }
}











