import 'package:flutter/cupertino.dart';

import 'custum_title_text.dart';

class CustumLogoApplyJob extends StatelessWidget {
  CustumLogoApplyJob({
    required this.imageString,required this.nameJob,required this.subTypeJob,
    Key? key,
  }) : super(key: key);
  String imageString;
  String nameJob;
  String subTypeJob;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imageString),
              SizedBox(
                height: 10,
              ),
              CustumTitle_500_20_black(title: nameJob),
              SizedBox(height: 10,),
              CustumTitle_400_14_black(title: subTypeJob),
            ],
          ),
        ),
      ),
    );
  }
}
