import 'dart:ffi';

import 'package:finalproject/Screens/again_applied_job/model/model_type_of_work.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../components/custom_main_button.dart';
import '../../components/custum_container_buble.dart';
import '../../components/custum_container_logo__apply_job.dart';
import '../../components/custum_type_of_work_icon_radio.dart';
import '../../generated/l10n.dart';
import '../apply_job/screen_apply_job/upload_portfolio_screen.dart';
import '../slider_screen/extract_widget.dart';
import 'cubit/radio_button_cubit.dart';

class TypeAgainAppliedJob extends StatefulWidget {
  TypeAgainAppliedJob({Key? key}) : super(key: key);

  @override
  State<TypeAgainAppliedJob> createState() => _TypeAgainAppliedJobState();
}

class _TypeAgainAppliedJobState extends State<TypeAgainAppliedJob> {
  final List<TypeWorkModel> workCard = [
    TypeWorkModel(
        nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
    TypeWorkModel(
        nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
    TypeWorkModel(
        nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
    TypeWorkModel(
        nameWork: 'Ui  Desighner', portfolio: 'portfolio', isSelected: false),
  ];

  final List<TypeWorkModel> selectIcon = [];

  String isSelected = "";

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
      body:
      Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Column(
            children: [
              CustumLogoApplyJob(
                subTypeJob: 'Discord • Jakarta, Indonesia ',
                imageString: 'images/apply_job/Spectrum Logo.png',
                nameJob: 'UI/UX Designer',
              ),
              CustumContainerBubleType(),
              SizedBox(
                height: 40.h,
              ),
              Text(
                S.of(context).TypeOfWork,
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
              SizedBox(
                height: 420.h,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Column(
                  children: [
                    TypeOfWorkIconRadio(radio: Radio(
                      value: 'seledct',
                      groupValue: isSelected, onChanged: (value) {
                      setState(() => isSelected = value.toString());
                    },),
                      nameTypeWork: 'jklwjdw',
                      typeFile: 'dwdwdwd',
                    ),
                    TypeOfWorkIconRadio(radio: Radio(
                      value: 'selct',
                      groupValue: isSelected, onChanged: (value) {
                      setState(() => isSelected = value.toString(),);
                    },),
                      nameTypeWork: 'jklwjdw',
                      typeFile: 'dwdwdwd',
                    ),
                    TypeOfWorkIconRadio(radio: Radio(
                      value: 'selassact',
                      groupValue: isSelected, onChanged: (value) {
                      setState(() => isSelected = value.toString(),);
                    },),
                      nameTypeWork: 'jklwjsadw',
                      typeFile: 'dwdwdwd',
                    ),
                    TypeOfWorkIconRadio(radio: Radio(
                      value: 'selsasact',
                      groupValue: isSelected, onChanged: (value) {
                      setState(() => isSelected = value.toString(),);
                    },),
                      nameTypeWork: 'jklsawjdw',
                      typeFile: 'dwdwdwd',
                    ),
                  ],
                ),

              ),



              MainButton(buttonText: Text(S.of(context).Next), onPressed: () {}),
            ],
          )


      ),
    );
  }
}