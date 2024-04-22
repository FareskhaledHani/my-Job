import 'package:dotted_border/dotted_border.dart';
import 'package:finalproject/Screens/apply_job/screen_apply_job/successfully_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';
import '../../../components/Custum_buble_check.dart';
import '../../../components/custum_container_buble.dart';
import '../../../components/custum_loaded_pdf.dart';
import '../../../components/custum_subtitle_text.dart';
import '../../../components/custum_title_text.dart';
import '../../../generated/l10n.dart';
import '../../slider_screen/extract_widget.dart';
import '../component/custem_widget.dart';
import '../../../components/custum_up_load_file.dart';

class UploadFile extends StatelessWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title:  Text(
            S.of(context).AppliedJob,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustumContainerBubleUpload(),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  S.of(context).UploadPortfolio,
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8.h,
                ),
                 Text(S.of(context).FillInYourBioDataCorrectly),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                     Text(
                      S.of(context).UploadCV,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Icon(FontAwesomeIcons.starOfLife,color: Colors.orangeAccent,size: 8,)
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                CustumLoadedPdfContainer(onTapclear: () {  }, onTapEdit: () {  }, SubtitlePdf: S.of(context).CVPdf300KB, titlePdf: 'CV.pdf 300KB',),
                SizedBox(
                  height: 10.h,
                ),
                 Text(
                  S.of(context).OtherFile,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustumUpLoadFileContainer(
                  ontap: () {},
                ),
                SizedBox(
                  height: 70.h,
                ),
                nextButton(
                    buttonText: S.of(context).Next,
                    onpressed: () {
                      Get.to(() => const DataSuccessfully());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


