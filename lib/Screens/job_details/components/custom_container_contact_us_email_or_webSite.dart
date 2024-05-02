import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/l10n.dart';

class ContainerContactsUsEmail extends StatelessWidget {
  const ContainerContactsUsEmail({
    required this.titleContainer,
    Key? key, required this.subTitleContainer,
  }) : super(key: key);
  final String titleContainer;
  final String subTitleContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 176.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD1D5DB)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding:  EdgeInsets.all(9.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
        titleContainer,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: const Color(0xff9CA3AF)),

            ),
            SizedBox(height: 10.h,),
            Text(
              subTitleContainer,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,

            ),
          ],
        ),
      ),
    );
  }
}