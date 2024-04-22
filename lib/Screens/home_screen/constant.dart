import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class IconBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Add functionality for the home button.
          },
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Add functionality for the search button.
          },
        ),   IconButton(
          icon: Icon(Icons.save),
          onPressed: () {
            // Add functionality for the search button.
          },
        ),  IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: () {
            // Add functionality for the search button.
          },
        ),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            // Add functionality for the settings button.
          },
        ),
      ],
    );
  }
}
// icon circle button ...........
class IconCircle extends StatelessWidget {
  final  IconData icon;
  final VoidCallback ontap;
  const IconCircle({
    Key? key, required this.icon,required this.ontap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height:43.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border:Border.all(width: 1,color: Colors.grey),
      ),
      child: Center(child: IconButton(icon:Icon(icon,size: 20) ,onPressed: ontap,)),);
  }
}