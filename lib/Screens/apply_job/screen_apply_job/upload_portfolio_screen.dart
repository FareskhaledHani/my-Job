import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:finalproject/Screens/apply_job/screen_apply_job/successfully_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import '../../../components/Custum_buble_check.dart';
import '../../../components/custom_main_button.dart';
import '../../../components/custum_container_buble.dart';
import '../../../components/custum_loaded_pdf.dart';
import '../../../components/custum_subtitle_text.dart';
import '../../../components/custum_title_text.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../../slider_screen/extract_widget.dart';
import '../component/custem_widget.dart';
import '../../../components/custum_up_load_file.dart';
import '../services/select_file.dart';


class UploadFile extends StatefulWidget {
  const UploadFile({Key? key}) : super(key: key);

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  final String filePath = 'file.path!';
 // Use ! to assert non-nullability
  final String fileName = "file.name";
   String _fileTitle ="YourCv" ;

   String _fileSize = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
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
        title: Text(
          S.of(context).AppliedJob,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustumContainerBubleUpload(),
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
                 Icon(
                  FontAwesomeIcons.starOfLife,
                  color: Colors.orangeAccent,
                  size: 10.sp,
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            CustumLoadedPdfContainer(
              onTapclear: () {
                setState((){
                  _fileTitle='YourCv';
                  _fileSize='0 ';
                  // _fileSize=fileSiiaze.toString();
                });
              },
              onTapEdit: ()async {
                final resultFile=await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['pdf','jpg', 'jpeg', 'png', 'gif'],
                );
                if (resultFile==null)return;
                final file =resultFile.files.first;
                openFile(file);
              },
              SubtitlePdf:"$_fileSize KB" ,
              titlePdf: _fileTitle,
            ),

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
              ontap: ()  async{
               // await _pickFile;
              // // await selectAndOpenFile(context);
                final resultFile=await FilePicker.platform.pickFiles(
                 type: FileType.custom,
                  allowedExtensions: ['pdf','jpg', 'jpeg', 'png', 'gif'],
                );
                if (resultFile==null)return;
                final file =resultFile.files.first;
               openFile(file);
              }, onPressedIcon: () {  },
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MainButton(
                    buttonText: Text(S.of(context).Next),
                    onPressed: () {
                      Get.to(() => const DataSuccessfully());
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void _pickFile()async{
  //   FilePickerResult? result =await FilePicker.platform.pickFiles(
  //     allowedExtensions: ['pdf','doc'],
  //   );
  //
  //   if (result !=null &&result.files.single.path !=null){
  //     PlatformFile file= result.files.first;
  //     print(file.name);
  //
  //     File _file =File(result.files.single.path!);
  //     setState((){
  //       _fileText =_file.path;
  //     });
  //   }else {
  //
  //   }
  // }






 Future<File> saveFilePermanent(PlatformFile file)async {
    final appStorage =await getApplicationDocumentsDirectory();
    final newFile=File('${appStorage.path}/${file.name}');
    return File(file.path!).copy(newFile.path);

 }
  void openFile(PlatformFile file) {
    OpenFile.open(file.path);
    // final kb =file.size/1024;
    // final mb =kb/1024;
    // final fileSiiaze =mb>=1?'${mb.toStringAsFixed(2)}MB':'${kb.toStringAsFixed(100)}KB';
    setState((){
      _fileTitle=file.name;
      _fileSize=(file.size/1024).toString();
      // _fileSize=fileSiiaze.toString();
    });
  }
}
