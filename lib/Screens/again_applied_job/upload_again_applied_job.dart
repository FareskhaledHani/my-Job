import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../components/custom_main_button.dart';
import '../../components/custum_container_buble.dart';
import '../../components/custum_container_logo__apply_job.dart';
import '../../components/custum_loaded_pdf.dart';
import '../../components/custum_up_load_file.dart';
import '../../generated/l10n.dart';
import '../slider_screen/extract_widget.dart';

class UpLoadAgainAppliedJob extends StatelessWidget {
  const UpLoadAgainAppliedJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).AppliedJob,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: ListView(
          children: [
            CustumLogoApplyJob(
              subTypeJob: 'Discord • Jakarta, Indonesia ',
              imageString: 'images/apply_job/Spectrum Logo.png',
              nameJob: 'UI/UX Designer',
            ),
            CustumContainerBubleUpload(),
            SizedBox(
              height: 40.h,),
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
              CustumLoadedPdfContainer(onTapclear: () {  }, onTapEdit: () {  }, SubtitlePdf: 'CV.pdf 300KB', titlePdf: 'CV.pdf 300KB',),
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
              CustomUpLoadFileContainer(
                ontap: () {}, onPressedIcon: () {  },
              ),
              SizedBox(
                height: 70.h,
              ),
              MainButton(
                  buttonText: Text(S.of(context).Next),
                  onPressed: () {

                  }),

          ],
        ),
      ),
    );
  }
}
