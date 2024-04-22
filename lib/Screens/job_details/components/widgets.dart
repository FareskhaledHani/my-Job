import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../apply_job/screen_apply_job/bio_data_screen.dart';
import '../../slider_screen/extract_widget.dart';
import '../cubits/select_item_button/drop_down_button.dart';
import '../models/card_employees_model.dart';


// 0 loaded widget in job details screen
class Indicator extends StatelessWidget {
  const Indicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}



// 1 description widget in job details screen
class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ const Text('Description screen'),
        Positioned(
            bottom: 2.h,
            left: 0.w,
            child: nextButton(buttonText: 'Apply now', onpressed: (){  Get.to(() => const BioData());}))],
    );
  }
}



// 2 Company widget in job details screen
class Company extends StatelessWidget {
  const Company({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        const Text(
          'Contuct Us',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ContainerContactsUsEmail(
              email: '',
            ),
            ContainerContactsUsWebsite(
              website: '',
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Expanded(
          child: Stack(children: [
            Positioned(
                bottom: 2.h,
                left: 0.w,
                child: nextButton(buttonText: 'Apply now', onpressed: (){  Get.to(() => const BioData());}))
          ],),
        )
      ],
    );
  }
}

//in this widget we contain two widget
class ContainerContactsUsEmail extends StatelessWidget {
 const ContainerContactsUsEmail({
    required this.email,
    Key? key,
  }) : super(key: key);
 final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 176.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD1D5DB)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'email',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff9CA3AF)),
            ),
            Text(
              email,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff9CA3AF)),
            ),
          ],
        ),
      ),
    );
  }
}
class ContainerContactsUsWebsite extends StatelessWidget {
 const ContainerContactsUsWebsite({
    required this.website,
    Key? key,
  }) : super(key: key);
 final String website;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 176.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD1D5DB)),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Website',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff9CA3AF)),
            ),
            Text(
              website,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xff9CA3AF)),
            ),
          ],
        ),
      ),
    );
  }
}




// 3 People widget in job details screen
class People extends StatelessWidget {
  People({
    Key? key,
    required this.number,
    required this.job,
  }) : super(key: key);
  final String number;
  final String job;
  String valueChooseItem = '';
  final List<String> listItems = ['item1', 'item1', 'item1', 'item1'];


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DropdownCubit,String>(
      builder: (context, state) {
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
                      Container(
                        height: 35.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.red
                        ),
                        child: DropdownButton(
                            value: 'UI  UX',
                            underline: Container(),
                            isExpanded: true,
                            borderRadius:   BorderRadius.circular(24),
                            items: BlocProvider
                                .of<DropdownCubit>(context)
                                .items, onChanged:
                            (dynamic value) {
                          BlocProvider.of<DropdownCubit>(context)
                              .setSelectedValue(value);
                        }),
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
          SizedBox(height: 20,),
          Stack(
            children :[SizedBox(
              width: 380.w,
              height: 331.5.h,
              child: ListView.builder(
                itemCount: Employees.length,
                itemBuilder: (BuildContext context, int index) {
                  return EmployeesCard(
                    cards: Employees[index],
                  );
                },
              ),
            ),
              Positioned(
                  bottom: 2.h,
                  left: 0.w,
                  child: nextButton(buttonText: 'Apply now', onpressed: (){  Get.to(() => const BioData());}))
            ],
          ),
        ]);
      },
    );
  }
}

//in this widget we contain another widget
///1
List<CardEmployeesModel> Employees = [
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