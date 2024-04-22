import 'package:finalproject/Screens/apply_job/screen_apply_job/upload_portfolio_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';
import '../../../components/Custum_buble_check.dart';
import '../../../components/custum_container_buble.dart';
import '../../../generated/l10n.dart';
import '../../slider_screen/extract_widget.dart';
import '../component/custem_widget.dart';
import '../models/type_of_work_model.dart';

class TypeOfWork extends StatelessWidget {
  TypeOfWork({Key? key, }) : super(key: key);
  final List<TypeWorkModel>workCard = [
    TypeWorkModel(nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
    TypeWorkModel(nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
    TypeWorkModel(nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
    TypeWorkModel(nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
  ];


  final List<TypeWorkModel>selectIcon = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading:Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () { Get.back();},
              );
            },
          ) ,
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(S.of(context).AppliedJob, style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),),
          elevation: 0,),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).w,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustumContainerBubleType(),
                SizedBox(height: 40.h,),
                Text(S.of(context).TypeOfWork, style: TextStyle(
                    fontSize: 25.sp, fontWeight: FontWeight.w500),),
                SizedBox(height: 8.h,),
                 Text(S.of(context).FillInYourBioDataCorrectly),
                SizedBox(height: 30.h,),
                Container(
                  height: 420.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: workCard.length,
                    itemBuilder: (
                        BuildContext context, int index) {
                      return TybeOfWorkIcon(workCard[index].nameWork, workCard[index].portfolio, workCard[index].isSelected,index);
                    },),
                ),
                nextButton(buttonText: S.of(context).Next, onpressed: () {
                  Get.to(() => const UploadFile());
                }),
              ],
            ),

          ),
        ),
      ),
    );
  }

  Widget TybeOfWorkIcon(String nameTypeWork, String typeFile, bool isSelected, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10).h,
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
            border:Border.all(width: 0.5,color: Colors.grey)
        ),
        child: ListTile(
          title: Text(nameTypeWork),
          minVerticalPadding: 10,
          isThreeLine: true,
          
          subtitle: Text(typeFile),
          selectedTileColor: Colors.blue,
          trailing:isSelected ?Icon(Ionicons.radio_button_on_outline):Icon(Ionicons.radio_button_off_outline) ,
        ),
      ),
    );

  }
}




