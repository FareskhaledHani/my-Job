import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:finalproject/Screens/apply_job/screen_apply_job/successfully_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import '../../../components/custom_main_button.dart';
import '../../../components/custum_container_buble.dart';
import '../../../components/custum_loaded_pdf.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../../../components/custum_up_load_file.dart';
import '../cubits/finally_apply_job_cubit/finally_apply_jop_cubit.dart';
import '../models/post_apply_job_model.dart';




class UploadFile extends StatelessWidget {
  final String name;
  final String email;
  final String number;
  final String selectRadio;
  final String filePath = 'file.path!';
 // Use ! to assert non-nullability
  final String fileName = "file.name";
   String _fileTitle ="YourCv" ;

   String _fileSize = '0';
  File? cvFile;
  File? imageFile;

  UploadFile({Key? key, required this.name, required this.email, required this.number, required this.selectRadio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => FinallyApplyJopCubit(),
  child: Scaffold(
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
      body: BlocConsumer<FinallyApplyJopCubit, FinallyApplyJopState>(
      listener: (context, state) {
  if (state is FinallyApplyJopSuccess) {
  Get.to(() => const DataSuccessfully());
  } else if (state is FinallyApplyJopFailure) {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(S.of(context).CheckYourAccountOrNetwork),duration:const Duration(seconds: 2), ));
  }
  // TODO: implement listener
  },
      builder: (context, state) {return Padding(
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
                // setState((){
                //   cvFile=null;
                //   _fileTitle='YourCv';
                //   _fileSize='0 ';
                //   // _fileSize=fileSiiaze.toString();
                // });
              },
              onTapEdit: ()async {
                final fileInfo = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['pdf','jpg', 'jpeg', 'png', 'gif'],
                );
                if (fileInfo==null) {
                } else{
                 
                  cvFile=File(fileInfo.files[0].path!);
                }
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
              onTap: ()  async{
                // await _pickFile;
                // // await selectAndOpenFile(context);
                final resultFile=await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['pdf','jpg', 'jpeg', 'png', 'gif'],);
                if (resultFile==null) {} else{
                  imageFile=File(resultFile.files[0].path!);}
                final file =resultFile?.files.first;
                openFile(file!);
              }, onTapText: () async {
              final fileInfo = await FilePicker.platform.pickFiles(
                type: FileType.custom,
                allowedExtensions: ['pdf','jpg', 'jpeg', 'png', 'gif'],
              );
              if (fileInfo==null) {
              } else{
                cvFile=File(fileInfo.files[0].path!);
              }
            },
            ),

            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MainButton(
                    buttonText: state is FinallyApplyJopLoading
                        ? const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 1,
                          color: Colors.white,
                        ))
                        : Text(S.of(context).Next),
                    onPressed: () {
                      if (imageFile!=null&&cvFile!=null){
                        final jobApplication = PostJobApplication(
                          cvFile: cvFile!,
                          name: name,
                          email: email,
                          mobile: number,
                          workType: selectRadio,
                          otherFile: imageFile!,
                          jobsId: int.parse('1'),
                          userId: int.parse('2'),
                        );
                        context
                            .read<FinallyApplyJopCubit>().submitJobApplication(jobApplication);
                      }
                      else  { ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(S.of(context).CheckUploadCvAndOtherFile),duration:const Duration(seconds: 2), ));}

                    }),
              ),
            ),
          ],
        ),
      );}

    ),
),);
  }





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
    // setState((){
    //   _fileTitle=file.name;
    //   _fileSize=(file.size/1024).toString();
    //   // _fileSize=fileSiiaze.toString();
    // });
  }
}
