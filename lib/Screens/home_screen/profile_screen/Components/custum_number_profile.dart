import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/custum_subtitle_text.dart';

class CustumNumberProfile extends StatelessWidget {
  CustumNumberProfile({
    required this.value,required this.titleText

  });
  final String titleText;
  String value;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {  },
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustumSubTitle_400_12_grey(subTitle: titleText),
          SizedBox(height: 10.h),
          Text(value,style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}