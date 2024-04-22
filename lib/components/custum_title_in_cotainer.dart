
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custum_subtitle_text.dart';

class TitleInContainer extends StatelessWidget {

  final String title;
  const TitleInContainer({
    Key? key,required this.title
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10).w.h,
      height: 36.h,
      width: MediaQuery.of(context).size.width,
      color: Color(0xffE5E7EB),
      child: CustumSubTitle_500_16_grey(subTitle: title,)
    );
  }
}
