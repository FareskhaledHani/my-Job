import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListTileProfile extends StatelessWidget {
  const CustomListTileProfile({
    required this.title,required this.icon,required this.onpress,
    Key? key,
  }) : super(key: key);
  final String title;
  final  IconData icon;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onpress,
      leading: CircleAvatar(
        backgroundColor: Color(0xffD6E4FF),
        child: Icon(icon),
      ),
      title: Text(title,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w400),),
      trailing: IconButton(icon: Icon(Icons.arrow_forward_rounded,size: 20.sp,color: Colors.black,), onPressed: () {  },),
      minLeadingWidth: 10,
    );
  }
}
/////////////////FontAwesomeIcons.arrowRightLong