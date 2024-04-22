import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustumListTileProfile extends StatelessWidget {
  const CustumListTileProfile({
    required this.title,required this.icon,required this.onpress,
    Key? key,
  }) : super(key: key);
  final String title;
  final  IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xffD6E4FF),
        child: Icon(icon),
      ),
      title: Text(title,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w400),),
      trailing: IconButton(icon: Icon(FontAwesomeIcons.arrowRightLong,size: 18.sp,color: Colors.black,), onPressed: onpress,),
      minLeadingWidth: 10,
    );
  }
}
