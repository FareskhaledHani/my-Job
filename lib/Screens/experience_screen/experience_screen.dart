import 'package:finalproject/Screens/education_screen/cubit/cubit.dart';
import 'package:finalproject/Screens/experience_screen/cubit/check_box_cubit/check_box_cubit.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/custom_empty_field_controller.dart';
import '../../components/custom_field_with_perfix_icon.dart';
import '../../components/custom_main_button.dart';
import '../../components/custum-field_date_select.dart';
import '../../generated/l10n.dart';
import 'cubit/service_cubit/experience_cubit.dart';
import 'model/model_experience.dart';

class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({Key? key, required this.positionInitial, required this.typeInitial, required this.companyNameInitial, required this.startTimeEx, required this.endTimeEx, required this.positionController, required this.typeWorkController, required this.companyNameController, required this.locationController, required this.startYearController, required this.endYearController, required this.experienceKey}) : super(key: key);
  final TextEditingController positionController;
  final TextEditingController typeWorkController ;
  final TextEditingController companyNameController ;
  final TextEditingController locationController ;
  final TextEditingController startYearController ;
  final TextEditingController endYearController ;
  final GlobalKey<FormState>experienceKey;
  final String positionInitial;
  final String typeInitial;
  final String companyNameInitial;
  final String startTimeEx;
  final String endTimeEx;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CheckBoxCubit(),
        ),
        BlocProvider(
          create: (context) => FirstDateCubit(startYearController),
        ),
        BlocProvider(
          create: (context) => ExperienceCubit(),
        ),
        BlocProvider(
          create: (context) => EndDateCubit(endYearController),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(S.of(context).Experience),
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: BodyExperienceScreen(experienceKey: experienceKey, positionController: positionController, typeWorkController: typeWorkController, companyNameController: companyNameController, locationController: locationController, startYearController: startYearController, endYearController: endYearController, positionInitial: positionInitial, typeInitial: typeInitial, companyNameInitial: companyNameInitial, startTimeEx: startTimeEx, endTimeEx: endTimeEx),
      ),
    );
  }
}

class BodyExperienceScreen extends StatelessWidget {
  const BodyExperienceScreen({
    Key? key,
    required this.experienceKey,
    required this.positionController,
    required this.typeWorkController,
    required this.companyNameController,
    required this.locationController,
    required this.startYearController,
    required this.endYearController,
    required this.positionInitial,
    required this.typeInitial,
    required this.companyNameInitial,
    required this.startTimeEx,
    required this.endTimeEx,
  }) : super(key: key);

  final GlobalKey<FormState> experienceKey;
  final TextEditingController positionController;
  final TextEditingController typeWorkController;
  final TextEditingController companyNameController;
  final TextEditingController locationController;
  final TextEditingController startYearController;
  final TextEditingController endYearController;
  final String positionInitial;
  final String typeInitial;
  final String companyNameInitial;
  final String startTimeEx;
  final String endTimeEx;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: experienceKey,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10.sp),
            margin: EdgeInsets.all(20.0.sp),
            height: 770.h,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).Position,
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
                    return null;
                  },
                  // initialValue: 'Product Designer',
                  hintText: '', controller: positionController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).TypeOfWork,
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
                    return null;
                  },
                  // initialValue: 'Product Designer',
                  hintText: '',
                  controller: typeWorkController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).CompanyName,
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
                    return null;
                  },
                  // initialValue: 'Product Designer',
                  hintText: '',
                  controller: companyNameController,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).Location,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: const Color(0xff9CA3AF)),
                ),
                SizedBox(height: 5.h),
                CustomFieldWithPrefixIcon(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return S.of(context).NameIsEmpty;
                    } else if (value.length < 4) {
                      return S.of(context).NameIsLeast;
                    }
                    return null;
                  },
                  // initialValue: 'Product Designer',
                  hintText: '',
                  controller: locationController,
                  onTap: () {},
                  prefixIcon: const Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<CheckBoxCubit, CheckBoxState>(
                      builder: (context, state) {
                        bool isChecked = state is CheckboxChecked ? state.checked : false;
                        return Checkbox(
                          onChanged: (bool? value) {
                            context.read<CheckBoxCubit>().toggleCheckbox(value ?? false);
                          },
                          value: isChecked,
                        );
                      },
                    ),
                    Text(S.of(context).IAmCurrentlyWorkingInThisRole),
                  ],
                ),
                SizedBox(height: 10.h),
                Text(
                  S.of(context).StartYear,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: const Color(0xff9CA3AF)),
                ),
                SizedBox(height: 5.h),
                BlocBuilder<FirstDateCubit, DateTime?>(
                  builder: (context, state) {
                    return FieldUsedInDate(
                      onPressed: () {
                        context.read<FirstDateCubit>().selectDate(context);
                        // _selectDate2();
                      },
                      controller: startYearController,
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
                SizedBox(height: 10.h),
                Text(
                  S.of(context).EndYear,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: const Color(0xff9CA3AF)),
                ),
                SizedBox(height: 5.h),
                BlocBuilder<EndDateCubit, DateTime?>(
                  builder: (context, state) {
                    return FieldUsedInDate(
                      onPressed: () {
                        context.read<EndDateCubit>().selectDate(context);
                        // _selectDate2();
                      },
                      controller: endYearController,
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
                const Expanded(
                    flex: 1,
                    child: SizedBox()),
                BlocBuilder<ExperienceCubit, ExperienceState>(
                  builder: (context, state) {
                    if (state is ExperienceInitial) {
                      return Expanded(
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Center(
                                  child: MainButton(
                                      buttonText: Text(S.of(context).Save),
                                      onPressed: () async {
                                        if (experienceKey.currentState?.validate()==true){
                                          CacheHelper.setCompleteExperience(true);
                                          final modelExperience =
                                          ModelExperience(
                                              end: endYearController.text,
                                              typeWok: typeWorkController.text,
                                              start: startYearController.text,
                                              userId: 'id',
                                              companyName: companyNameController.text,
                                              location: locationController.text,
                                              position: positionController.text,);
                                          context.read<ExperienceCubit>().sendExperience(modelExperience);
                                          await CacheHelper.setExperience(
                                              {
                                                'position':positionController.text,
                                                'typeWork':typeWorkController.text,
                                                'companyName':companyNameController.text,
                                                'location':locationController.text,
                                                'startYear':startYearController.text,
                                                'endYear':endYearController.text,
                                              });
                                        }

                                      }))));
                    } else if (state is ExperienceSuccess) {
                      return Center(
                          child:Text(
                        S.of(context).Submitted,
                        style: TextStyle(fontSize: 20.sp, color: Colors.blue)
                      ));
                    } else if (state is ExperienceLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is ExperienceFailure) {
                      return Text(state.errorMessage);
                    } else {
                      return Text(S.of(context).ErrorIsHappened);
                    }
                  },
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.sp),
            margin: EdgeInsets.all(20.0.sp),
            height: 100.h,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              //minVerticalPadding: 15,
              leading: Padding(
                padding: EdgeInsets.only(top: 10.0.h),
                child: Image.asset('images/compleate_profile/Group 15495.png'),
              ),
              title: CacheHelper.getCompleteExperience()?Text(positionInitial):Text(S.of(context).Title),
              subtitle: CacheHelper.getCompleteExperience()? Text('$typeInitial.$companyNameInitial\n$startTimeEx-$endTimeEx'): Text(S.of(context).SubTitle),
              trailing:  Padding(
                padding: EdgeInsets.only(top: 30.0.h),
                child: IconButton(
                  color: Colors.blue, icon: const Icon(Icons.edit), onPressed: () { experienceKey.currentState?.validate()==true; },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
