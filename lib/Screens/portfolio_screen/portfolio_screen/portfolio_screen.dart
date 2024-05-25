import 'package:finalproject/components/custum_title_text.dart';
import 'package:finalproject/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/custum_loaded_pdf.dart';
import '../../../../components/custum_up_load_file.dart';
import '../../../core/cash_helper.dart';
import '../../../core/services/file_picker_helper.dart';
import '../../../generated/l10n.dart';
import '../cubit_portFolio/delete_cubit/delete_portfolio_cubit.dart';
import '../cubit_portFolio/post_portfolio_cubit/post_portfolio_cubit.dart';
import '../services/post_portfolio_service.dart';

class PortfolioEdit extends StatelessWidget {
  PortfolioEdit({Key? key}) : super(key: key);
   List<dynamic> portfolio=[];

  PostPortfolioService postPortfolioService = PostPortfolioService();
  FilePickerHelper filePickerHelper = FilePickerHelper();


  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DeletePortfolioCubit(),
        ), BlocProvider(
          create: (context) => PostPortfolioCubit(),
        ),
      ],
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
              S.of(context).PortFolio,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black),
            ),
            elevation: 0,
          ),
          body: BodyPortfolioScreen(filePickerHelper: filePickerHelper, portfolio: portfolio)),
    );
  }

  }

class BodyPortfolioScreen extends StatelessWidget {
  const BodyPortfolioScreen({
    Key? key,
    required this.filePickerHelper,
    required this.portfolio,
  }) : super(key: key);

  final FilePickerHelper filePickerHelper;
  final List portfolio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustumTitle_500_18_black(title: S.of(context).AddPortfolioHere),
          SizedBox(
            height: 20.h,
          ),
          CustomUpLoadFileContainer(
            onTap: () async {
              Map<String, dynamic>? fileInfo = await filePickerHelper.pickCVFile();
              if (fileInfo != null) {
                if (CacheHelper.getCompletePortfolio()==false){
                  CacheHelper.setCompletePortfolio(true);
                  await CacheHelper.incrementInt(1);
                }

                String filePath = fileInfo['filePath'];
                String fileName = fileInfo['name'];
                int fileSize = fileInfo['size'];
                // await filePickerHelper.saveFile(filePath);
                print('==========================================Selected file path: $filePath');
                print('================================================Selected file path: $fileName');
                String? imagePath = await filePickerHelper.pickImageFile();
                if (imagePath != null) {
                  print('Selected image file: $imagePath');
                } else {
                  print('No image file selected.');
                }
                Map<String, dynamic> myMap = {
                  'name': fileName,
                  'size': imagePath,
                };
                portfolio.add(myMap);
                // int fileSize = 1024; // Replace with actual file size in bytes
                await filePickerHelper.saveFile(fileName, filePath, fileSize);
                print('=================3333333333333333332222222222${filePickerHelper.saveFile(fileName, filePath, fileSize)}');
                BlocProvider.of<PostPortfolioCubit>(context).postPortFolio(filePath, imagePath!);

              } else {
                print('User canceled the file picker');
              }
              // Pick image file
            },
            onTapText: () async {   Map<String, dynamic>? fileInfo = await FilePickerHelper().pickCVFile(); },
          ),
          SizedBox(height: 20.h),
            BlocBuilder<PostPortfolioCubit, PostPortfolioState>(
              builder: (context, postPortState) {
                if (postPortState is PostPortfolioLoadingState) {
                  return const Center(child: CircularProgressIndicator());}
               else if(postPortState is PostPortfolioInitial){
                 return  FutureBuilder<List< dynamic>>(
                 future: filePickerHelper.getFiles(),
                   builder: (BuildContext context, snapshot) {
                     if (snapshot.connectionState == ConnectionState.waiting) {
                       // Show loading indicator while data is being fetched
                       return const CircularProgressIndicator();
                     }  else if (snapshot.hasError) {
                       // Show error message if there's an error
                       return Text('Error: ${snapshot.error}');
                     } else if (snapshot.data?.length==0) {
                       // Show error message if there's an error
                       return Center(child: Text(S.of(context).YourCv));
                     } else {
                       // Data has been successfully retrieved, display the files
                       List files = snapshot.data!;
                       return SizedBox(
                         height: 200,
                         child: ListView.builder(
                           itemCount: files.length,
                           itemBuilder: (context, index) {
                             // Access file data
                             Map<String, dynamic> fileData = files[index];
                             String fileName = fileData['fileName'];
                             String filePath = fileData['filePath'];
                             int fileSize = fileData['fileSize'];
                             double fileSizeKb=fileSize/1024;
                             double fileSizeMb=fileSizeKb/1024;
                             return CustumLoadedPdfContainer(
                               onTapEdit: () {},
                               titlePdf: fileName,
                               SubtitlePdf: fileSizeMb.toString(),
                               onTapclear: ()async {
                                await filePickerHelper.deleteFile(index);
                                 // BlocProvider.of<DeletePortfolioCubit>(
                                 //     context)
                                 //     .deleteFavoriteJob(843);
                               },
                             );
                           },
                         ),
                       );
                     }
                   },); }
                else if (postPortState is PostPortfolioSuccess) { return
                  FutureBuilder<List< dynamic>>(
                    future: filePickerHelper.getFiles(),
                    builder: (BuildContext context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        // Show loading indicator while data is being fetched
                        return const CircularProgressIndicator();
                      }  else if (snapshot.hasError) {
                        // Show error message if there's an error
                        return Text('Error: ${snapshot.error}');
                      } else if (snapshot.data?.length==0) {
                        // Show error message if there's an error
                        return Center(child: Text(S.of(context).YourCv));
                      } else {
                        // Data has been successfully retrieved, display the files
                        List files = snapshot.data!;
                        return Expanded(
                          child: ListView.builder(
                            itemCount: (files.length),
                            itemBuilder: (context, index) {
                              // Access file data
                              Map<String, dynamic> fileData = files[index];
                              String fileName = fileData['fileName'];
                              String filePath = fileData['filePath'];
                              int fileSize = fileData['fileSize'];
                              double fileSizeInKB = fileSize / 1024; // Convert bytes to KB
                              return CustumLoadedPdfContainer(
                                onTapEdit: () {},
                                titlePdf: fileName,
                                SubtitlePdf: fileSizeInKB.toString(),
                                onTapclear: ()async {
                                  context.read()<PostPortfolioCubit>();
                                  await filePickerHelper.deleteFile(index);
                                  // BlocProvider.of<DeletePortfolioCubit>(
                                  //     context)
                                  //     .deleteFavoriteJob(843);
                                },
                              );
                            },
                          ),
                        );
                      }
                    },);
                }
                else if (postPortState is PostPortfolioFailureState) {const Center(child: Text('failed'));}
                else {return const Center(child: Text('Unknown State'));}
                 return const Text('data');
              },
            )
        ],
      ),
    );
  }
}
