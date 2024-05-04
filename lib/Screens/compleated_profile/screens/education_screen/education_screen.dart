import 'package:finalproject/Screens/home_screen/home_screen/home_screen.dart';
import 'package:finalproject/components/custom_empty_field.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../components/custom_empty_field_controller.dart';
import '../../../../components/custom_main_button.dart';
import '../../../../components/custum-field_date_select.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../core/cash_helper.dart';
import '../../../../core/cash_helper.dart';
import '../../../../generated/l10n.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final TextEditingController _universityTitleController =
      TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateController2 = TextEditingController();
  final TextEditingController _dateController1 = TextEditingController();
  final GlobalKey<FormState> educationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: Form(
          key: educationKey,
          child: Column(
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
                          return 'Name Is Empty';
                        } else if (value.length < 4) {
                          return 'Name Is Least Please Check Your Name';
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
                      hintText: '',
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
                    FieldUsedInDate(
                      onPressed: () {
                        _selectDate1();
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
                    FieldUsedInDate(
                      onPressed: () {
                        _selectDate2();
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
                    ),
                    Expanded(
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Center(
                                child: MainButton(
                                    buttonText: Text(S.of(context).Save),
                                    onPressed: () {
                                      if (educationKey.currentState?.validate() == true)
                                      {
                                        CacheHelper.setEducation({
                                          'university':_universityTitleController.text,
                                          'title':_titleController.text,
                                          'start':_dateController1.text,
                                          'end':_dateController2.text,
                                        });
                                        Get.to(()=>const HomeScreen());
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
                    child:
                        Image.asset('images/compleate_profile/Group 15495.png'),
                  ),
                  title: Text(_universityTitleController.text.isEmpty
                      ? 'University'
                      : _universityTitleController.text),
                  subtitle: Text(
                      '${_titleController.text.isEmpty ? 'Title' : _titleController.text}\n${_dateController1.text} - ${_dateController2.text}'),
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
      ),
    );
  }

  Future<void> _selectDate1() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      setState(() {
        _dateController1.text = _picked.toString().split(" ")[0];
        print(_dateController1.text);
      });
    }
  }

  Future<void> _selectDate2() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      setState(() {
        _dateController2.text = _picked.toString().split(" ")[0];
        print(_dateController2.text);
      });
    }
  }
}
