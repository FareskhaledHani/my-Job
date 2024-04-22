import 'package:finalproject/components/custum_title_text.dart';
import 'package:finalproject/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../components/custum_loaded_pdf.dart';
import '../../../../components/custum_up_load_file.dart';
import '../../../generated/l10n.dart';
import '../model/model.dart';

class PortfolioEdit extends StatelessWidget {
   PortfolioEdit({Key? key}) : super(key: key);

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
        title:  Text(
          S.of(context).PortFolio,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         CustumTitle_500_18_black(title: S.of(context).AddPortfolioHere),
            SizedBox(height: 20.h,),
            CustumUpLoadFileContainer(ontap: () {  },),
           SizedBox(height: 20.h,),
           Expanded(
             child: ListView.builder(
               itemCount: listPdf.length,
               itemBuilder: (BuildContext context, int index) { 
                 return CustumLoadedPdfContainer(onTapEdit: () {  }, titlePdf: listPdf[index].namePdf, SubtitlePdf: listPdf[index].sizePdf, onTapclear: () {  },);
               },),
           )
            // ListView.builder(
            //   itemCount: 4,
            //   itemBuilder: (BuildContext context, int index) {
            //     return
            //   },)
          ],
        ),
      ),
    );
  }
  List<ModelPortfolio> listPdf=[
    ModelPortfolio(namePdf: 'namePdf', sizePdf: 'sizePdf'),
    ModelPortfolio(namePdf: 'namePdf', sizePdf: 'sizePdf'),
    ModelPortfolio(namePdf: 'namePdf', sizePdf: 'sizePdf'),
    ModelPortfolio(namePdf: 'namePdf', sizePdf: 'sizePdf'),
    ModelPortfolio(namePdf: 'namePdf', sizePdf: 'sizePdf'),
  ];
}
