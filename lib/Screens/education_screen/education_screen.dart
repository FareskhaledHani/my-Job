import 'package:finalproject/Screens/education_screen/service/service_education.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../components/custom_empty_field_controller.dart';
import '../../../../components/custom_main_button.dart';
import '../../../../components/custum-field_date_select.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../core/cash_helper.dart';
import '../../../../generated/l10n.dart';
import 'cubit/cubit.dart';

class Education extends StatelessWidget {
  final TextEditingController universityTitleController;
  final TextEditingController titleController;
  final TextEditingController dateController2 ;
  final TextEditingController dateController1 ;
  final GlobalKey<FormState> educationKey ;
  final String titleInitial;
  final String titleUniversity;
  final String startTime;
  final String endTime;

  const Education(
      {Key? key,
      required this.titleInitial,
      required this.titleUniversity,
      required this.startTime,
      required this.endTime, required this.universityTitleController, required this.titleController, required this.dateController2, required this.dateController1, required this.educationKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FirstDateCubit(dateController1),
        ),
        BlocProvider(
          create: (context) => EndDateCubit(dateController2),
        ),
      ],
      child: Scaffold(
        backgroundColor: KPrimaryBackGroundColor,
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: CustumTitle_500_20_black(
            title: S.of(context).Education,
          ),
          elevation: 0,
        ),
        body: BodyEducation(educationKey: educationKey, universityTitleController: universityTitleController, dateController1: dateController1, titleController: titleController, dateController2: dateController2, titleInitial: titleInitial, titleUniversity: titleUniversity, startTime: startTime, endTime: endTime),
      ),
    );
  }
}

class BodyEducation extends StatelessWidget {
  const BodyEducation({
    Key? key,
    required this.educationKey,
    required TextEditingController universityTitleController,
    required TextEditingController dateController1,
    required TextEditingController titleController,
    required TextEditingController dateController2,
    required this.titleInitial,
    required this.titleUniversity,
    required this.startTime,
    required this.endTime,
  }) : _universityTitleController = universityTitleController, _dateController1 = dateController1, _titleController = titleController, _dateController2 = dateController2, super(key: key);

  final GlobalKey<FormState> educationKey;
  final TextEditingController _universityTitleController;
  final TextEditingController _dateController1;
  final TextEditingController _titleController;
  final TextEditingController _dateController2;
  final String titleInitial;
  final String titleUniversity;
  final String startTime;
  final String endTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.sp),
      child: Form(
        key: educationKey,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10.sp),
              height: 484.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).University,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 5.h),
                  CustomFieldEmptyController(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).NameIsEmpty;
                      } else if (value.length < 4) {
                        return S.of(context).NameIsLeast;
                      }
                    },
                    // initialValue: 'Product Designer',
                    hintText: '',
                    controller: _universityTitleController,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    S.of(context).Title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 5.h),
                  CustomFieldEmptyController(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).NameIsEmpty;
                      } else if (value.length < 4) {
                        return S.of(context).NameIsLeast;
                      }
                    },
                    // initialValue: 'Product Designer',
                    hintText: _dateController1.text,
                    controller: _titleController,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    S.of(context).StartYear,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 10.h),
                  BlocBuilder<FirstDateCubit, DateTime?>(
                    builder: (context, state) {
                      return FieldUsedInDate(
                        onPressed: () {
                          context
                              .read<FirstDateCubit>()
                              .selectDate(context);
                          // _selectDate2();
                        },
                        controller: _dateController1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return S.of(context).StartYearIsEmpty;
                          } else if (value.length < 3) {
                            return S.of(context).StartYearIsEmpty;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    S.of(context).EndYear,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: const Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 10.h),
                  BlocBuilder<EndDateCubit, DateTime?>(
                    builder: (context, state) {
                      return FieldUsedInDate(
                        onPressed: () {
                          context.read<EndDateCubit>().selectDate(context);
                          // _selectDate2();
                        },
                        controller: _dateController2,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return S.of(context).EndYearIsEmpty;
                          } else if (value.length < 4) {
                            return S.of(context).EndYearIsEmpty;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  Expanded(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Center(
                              child: MainButton(
                                  buttonText: Text(S.of(context).Save),
                                  onPressed: () async {
                                    if (educationKey.currentState
                                            ?.validate() ==
                                        true) {
                                      await CacheHelper
                                          .setCompleteEducation(true);
                                      await CacheHelper.setEducation({
                                        'university':
                                            _universityTitleController.text,
                                        'title': _titleController.text,
                                        'start': _dateController1.text,
                                        'end': _dateController2.text,
                                      });
                                      EditServiceEducation().updateEducationProfile(education: _universityTitleController.text);
                                     Get.back();
                                    }
                                  }))))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 100.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                minVerticalPadding: 15,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                      'images/compleate_profile/Group 15495.png'),
                ),
                title: Text(CacheHelper.getCompleteEducation()
                    ? titleInitial
                    : 'University'),
                subtitle: Text(
                    '${CacheHelper.getCompleteEducation() ? titleUniversity : 'Title'}\n${CacheHelper.getCompleteEducation() ? startTime : 'StartTime'} - ${CacheHelper.getCompleteEducation() ? endTime : 'StartTime'}'),
                trailing: const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
