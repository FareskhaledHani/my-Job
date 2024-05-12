import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarThreeWidget extends StatelessWidget {
 const AppBarThreeWidget({
    Key? key,required this.onPressed,required this.title,
  }) : super(key: key);
 final VoidCallback onPressed;
 final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed:onPressed, icon:const Icon(Icons.arrow_back_rounded)),
          Text(title,style: TextStyle(fontSize:25.sp ,fontWeight: FontWeight.w500),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.save))
        ],),
    );
  }
}