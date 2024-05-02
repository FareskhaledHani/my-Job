import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../generated/l10n.dart';
import 'custum_subtitle_text.dart';
import 'custum_title_text.dart';
class CustomUpLoadFileContainer extends StatelessWidget {
  const CustomUpLoadFileContainer({
    required this.ontap,
    Key? key, required this.onPressedIcon,
  }) : super(key: key);
 final VoidCallback ontap;
 final VoidCallback onPressedIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: DottedBorder(
        dashPattern: const [5, 3],
        strokeWidth: 4,
        borderType: BorderType.RRect,
        color: Colors.blue,
        radius: const Radius.circular(10),
        padding: const EdgeInsets.all(0),
        child: Container(
          height: 230.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: const Color(0xffECF2FF),
            borderRadius: BorderRadius.circular(10),
          ),
          // child: DotetContainer(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
               CircleAvatar(
                backgroundColor: const Color(0xffD6E4FF),
                maxRadius: 30,
                child: IconButton(onPressed: onPressedIcon, icon: const Icon(FontAwesomeIcons.fileArrowUp,size: 30,),)
              ),
              const SizedBox(
                height: 20,
              ),
               CustumTitle_500_18_black(title:S.of(context).UploadYourOtherFile,),
              const SizedBox(height: 20,),
               CustumSubTitle_400_12_grey(subTitle: S.of(context).MaxFileSize10MB,),
              const SizedBox(height: 10,),
              Center(
                child: SizedBox(
                  height: 40.h,
                  //width: double.infinity,
                  width: 350.w,
                  child: ElevatedButton(
                    onPressed: ontap,
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.arrowUpFromBracket,color:const Color(0xff3366FF),size: 15, ),
                        const SizedBox(width: 10,),
                        Text(S.of(context).AddFile,style: TextStyle(fontSize:18.sp ,fontWeight:FontWeight.w500 ,color:const Color(0xff3366FF) ),)
                      ],),
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color:const Color(0xff3366FF)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: const Color(0xffD6E4FF)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}