
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustumLoadedPdfContainer extends StatelessWidget {
  CustumLoadedPdfContainer({
    required this.onTapclear,required this.onTapEdit,required this.SubtitlePdf,required this.titlePdf,
    Key? key,
  }) : super(key: key);
  VoidCallback onTapEdit;
  VoidCallback onTapclear;
  String titlePdf;
  dynamic SubtitlePdf;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 1).h,
      child: Container(
        height: 70.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26, width: 1)),
        child: ListTile(
          minLeadingWidth: 5,
          horizontalTitleGap: 10,
          minVerticalPadding: 3,
          leading: Icon(
            FontAwesomeIcons.solidFilePdf,
            color: Colors.red[800],
          ),
          title: SizedBox( width: 50.w, child: Text(titlePdf,overflow: TextOverflow.ellipsis,maxLines: 1,)),
          subtitle: Text('$SubtitlePdf Mb'),
          trailing: Container(
            height: 50,
            width: 50,
            child: Row(
              children: [
                InkWell(
                    onTap: onTapEdit,
                    child: Icon(
                      FontAwesomeIcons.penToSquare,
                      size: 20,
                      color: Colors.blue,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: onTapclear,
                  child: Icon(
                    FontAwesomeIcons.circleXmark,
                    size: 20,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}