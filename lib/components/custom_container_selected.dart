import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class JobTybBoxFilter extends StatelessWidget {
  const JobTybBoxFilter({ required this.name,required this.colorBox,required this.colorBoxBorder }) ;
  final String name;

  final  Rx <Color> colorBox;
  final Rx <Color> colorBoxBorder;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 107.w,
      height: 34.h,
      decoration: BoxDecoration(
          border: Border.all(width: 1.w,color: colorBoxBorder.value,),
          color: colorBox.value,
          borderRadius: BorderRadius.circular(20)),
      child: Center(child: Text(name)),
    );
  }
}