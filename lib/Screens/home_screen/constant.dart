import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


final List<Widget> carusal2 = [Column(children: [
  Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color(0xFF091A7A)
    ),
    height:199.5.h,
    width: 370.w,

    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('images/home_screen/Twitter Logo.png'),
                SizedBox(width: 15.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Senior UI Designer',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:18 ),),
                    SizedBox(height: 5.h),
                    Text('Senior UI Designer',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:10 ),),
                  ],
                ),
              ],
            ),
            Icon(FontAwesomeIcons.bookmark)
          ],),
        SizedBox(height: 20.h,),
        Row(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Center(child: Text('fulltime')),
              width:100.w,
              height:35.h,
              decoration: BoxDecoration(
                  color: Color(0XFFFFFFF),borderRadius: BorderRadius.circular(20)
              ),),
            SizedBox(width: 5.w),
            Container(
              child: Center(child: Text('Remote')),
              width:100.w,
              height:35.h,
              decoration: BoxDecoration(
                  color: Color(0XFFFFFFF),borderRadius: BorderRadius.circular(20)
              ),),SizedBox(width: 5.w), Container(
              child: Center(child: Text('Senior')),
              width:100.w,
              height:35.h,
              decoration: BoxDecoration(
                  color: Color(0XFFFFFFF),borderRadius: BorderRadius.circular(20)
              ),),
          ],),
        SizedBox(height: 20.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("12K-15K/Month",style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w500,color: Colors.white),),ElevatedButton(onPressed: (){}, child: Text('ApplyNow'),style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),

                    )
                )
            ),)
          ],),
      ],),
    )
  ),
])];
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
