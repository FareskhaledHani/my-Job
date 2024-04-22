import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../components/custum_subtitle_text.dart';

class RowListTileTwoStep extends StatelessWidget {
  RowListTileTwoStep({
    required this.icon,required this.title,
    Key? key,
  }) : super(key: key);
  String title;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            color: Color(0xffD6E4FF),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(child: Icon(icon,color: Colors.blue,size: 20,),),
        ),
        SizedBox(width: 10,),
        Expanded(child: CustumSubTitle_400_12_grey(subTitle: title,)),
        SizedBox(width: 40,)
      ],
    );
  }
}