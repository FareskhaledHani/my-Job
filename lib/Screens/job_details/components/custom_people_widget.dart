
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../components/custom_main_button.dart';
import '../../../generated/l10n.dart';
import '../../apply_job/screen_apply_job/bio_data_screen.dart';
import '../../slider_screen/extract_widget.dart';
import '../models/card_employees_model.dart';

class People extends StatelessWidget {
  People({
    Key? key,
    required this.number,
    required this.job, required this.jobId,
  }) : super(key: key);
  final String number;
  final String job;
  final int jobId;
  final String valueChooseItem = '';
  final List<String> listItems = ['item1', 'item1', 'item1', 'item1'];

  @override
  Widget build(BuildContext context) {

    return Column(children: [
      SizedBox(
        height: 20.h,
      ),
      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        number,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff111827)),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        job,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6B7280)),
                      ),
                    ],
                  ),
                  SizedBox(
                    width:100.w,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                ],
              )
            ],
          )
        ],
      ),
      SizedBox(height: 20.h,),
      Stack(
        children :[SizedBox(
          width: 380.w,
          height: 300.h,
          child: ListView.builder(
            itemCount: employees.length,
            itemBuilder: (BuildContext context, int index) {
              return EmployeesCard(
                cards: employees[index],
              );
            },
          ),
        ),
          Positioned(
              bottom: 10.h,
              left: 0.w,
              child: MainButton(buttonText: Text(S.of(context).ApplyNow), onPressed: (){
                Get.to(()=>  BioData(jobId: jobId));
                // Get.to(() =>
                // const BioData());
              }))
        ],
      ),
    ]);

  }
}
//in this widget we contain another widget
///1
List<CardEmployeesModel> employees = [
  CardEmployeesModel(
      name: 'Diams Adi Sapurtro',
      photo: 'images/job_details/Dimas Profile.png',
      detailsEmploy: 'Senior Ui/ux Desighner at Twiter',
      experience: 'Working during',
      yearsExperience: '5 Years '),
  CardEmployeesModel(
      name: 'Syahrul Ramadhani',
      photo: 'images/job_details/Syahrul Profile.png',
      detailsEmploy: 'Senior Ui/ux Desighner at Twiter',
      experience: 'Working during',
      yearsExperience: '4 Years '),
  CardEmployeesModel(
      name: 'Farrel Daniswara',
      photo: 'images/job_details/Farrel Profile.png',
      detailsEmploy: 'Senior Ui/ux Desighner at Twiter',
      experience: 'Working during',
      yearsExperience: '5 Years '),
  CardEmployeesModel(
      name: 'Azzahra Farrelika',
      photo: 'images/job_details/Azzahra Profile.png',
      detailsEmploy: 'Senior Ui/ux Desighner at Twiter',
      experience: 'Working during',
      yearsExperience: '4 Years '),
  CardEmployeesModel(
      name: 'Diams Adi Sapurtro',
      photo: 'images/job_details/Dimas Profile.png',
      detailsEmploy: 'Senior Ui/ux Desighner at Twiter',
      experience: 'Working during',
      yearsExperience: '5 Years '),
  CardEmployeesModel(
      name: 'Diams Adi Sapurtro',
      photo: 'images/job_details/Dimas Profile.png',
      detailsEmploy: 'Senior Ui/ux Desighner at Twiter',
      experience: 'Working during',
      yearsExperience: '5 Years '),
];

class EmployeesCard extends StatelessWidget {
  const EmployeesCard({Key? key, required this.cards}) : super(key: key);
  final CardEmployeesModel cards;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 380.w,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(cards.photo),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.values[0],
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.values[1],
                    children: [
                      Text(
                        cards.name,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff111827)),
                      ),
                      SizedBox(
                        width: 110.w,
                      ),
                      Text(
                        cards.experience,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff6B7280)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cards.detailsEmploy,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff6B7280)),
                      ),
                      SizedBox(
                        width: 100.w,
                      ),
                      Text(
                        cards.yearsExperience,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff3366ff)),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Colors.black12,
            endIndent: 10,
          )
        ],
      ),
    );
  }
}