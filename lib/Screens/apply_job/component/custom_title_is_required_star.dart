
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTitleIsRequiredStar extends StatelessWidget {
  const CustomTitleIsRequiredStar({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style:
          TextStyle(fontWeight: FontWeight.w400, fontSize: 20.sp),
        ),
        Icon(FontAwesomeIcons.starOfLife,color: Colors.orangeAccent,size: 10.sp,)
      ],
    );
  }
}