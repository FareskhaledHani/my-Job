import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import '../../../generated/l10n.dart';

class CustomContainerSearchButton extends StatelessWidget {
  const CustomContainerSearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 50.h,
      width:MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.circular(40.sp),
        border: Border.all(width: 1.w,color: Colors.grey),
      ),
      child: Row(
        children: [ const Icon(Ionicons.search_outline,color: Colors.black),
          SizedBox(width: 10.w,),
          Text(  S.of(context).Search,style: TextStyle(fontSize: 18.sp,color: Colors.grey),)
        ],
      ),
    );
  }
}