import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JobTybBox extends StatelessWidget {
  JobTybBox({Key? key,required this.name,this.borderbox, this.height, });
  String name;
  var borderbox;
  var height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(name,style: TextStyle(fontSize: 12),)),
      width: 88.w,
      height: height,
      decoration: BoxDecoration(
          border: borderbox,
          color: Color(0XFFD6E4FF), borderRadius: BorderRadius.circular(20)),
    );
  }
}