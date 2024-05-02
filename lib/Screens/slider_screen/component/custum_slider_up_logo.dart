import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../generated/l10n.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Image.asset('images/slider/J BSQUE .jpg'),
        ),
        TextButton(
            onPressed: () {
              Get.to(()=>CreateAccount());
            },
            child: Text(
              S.of(context).Skip,
              style: const TextStyle(color: Colors.blueGrey),
            ))
      ],
    );
  }
}