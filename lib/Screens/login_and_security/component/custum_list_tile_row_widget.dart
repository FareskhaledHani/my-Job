
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../components/custum_subtitle_text.dart';
import '../../../components/custum_title_text.dart';

class CustumListTileRow extends StatelessWidget {
  CustumListTileRow({ required this.ontap,required this.hitenText,required this.text,
    Key? key,
  }) : super(key: key);
  VoidCallback ontap;
  String text;
  String hitenText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:ontap,
      title: CustumTitle_400_16_black(
        title: text,
      ),
      trailing: SizedBox(
        width: 210.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.values[1],
          children: [
            CustumSubTitle_400_12_grey(subTitle:hitenText),
            SizedBox(
              width: 10.w,
            ),
            Icon(
              FontAwesomeIcons.arrowRightLong,
              size: 15,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
