import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarThreeWidget extends StatelessWidget {
  AppBarThreeWidget({
    Key? key,required this.onpressed,required this.Tilte,
  }) : super(key: key);
  VoidCallback onpressed;
  String Tilte;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed:onpressed, icon:Icon(Icons.arrow_back_rounded)),
        Text('$Tilte',style: TextStyle(fontSize:25.sp ,fontWeight: FontWeight.w500),),
        IconButton(onPressed: (){}, icon: Icon(Icons.save))
      ],);
  }
}