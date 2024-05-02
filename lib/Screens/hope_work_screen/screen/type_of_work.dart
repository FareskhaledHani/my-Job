import 'package:finalproject/Screens/hope_work_screen/cubit/selection_state.dart';
import 'package:finalproject/components/custom_main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../generated/l10n.dart';
import '../../prefered_location/screen/preferd_location.dart';
import '../cubit/selection_cubit.dart';

class TypeOfWorkScreen extends StatelessWidget {
  const TypeOfWorkScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectionCubit(6),
      child: const Scaffold(
        body: BodyListContainer(
          containerData: [
            {
              'image': 'images/create_acount/Ilustrator Category.png',
              'text': 'UI/UX Designer'
            },
            {
              'image': 'images/create_acount/Ilustrator Category.png',
              'text': 'Ilustrator Designer'
            },
            {
              'image': 'images/create_acount/Developer Category.png',
              'text': 'Developer'
            },
            {
              'image': 'images/create_acount/Management Category.png',
              'text': 'Management'
            },
            {
              'image':
                  'images/create_acount/Information technology category.png',
              'text': 'Information Technology'
            },
            {
              'image': 'images/create_acount/Developer Category.png',
              'text': 'Research and Analytics'
            },
          ],
        ),
      ),
    );
  }
}

class BodyListContainer extends StatelessWidget {
  final List<Map<String, dynamic>> containerData;
  const BodyListContainer({required this.containerData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 50.0.h, bottom: 10.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Text(S.of(context).WhatTypeOfWorkAreYouInterestedIn,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color(0xFF111827))),
          ),
          Expanded(
            flex: 2,
            child: Text(
              S.of(context)
                  .TellUsWhatYouAreInterestedInSoWeCanCustomiseTheAppForYourNeeds,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                  color: const Color(0XFF737379)),
            ),
          ),
          Expanded(
            flex: 24,
            child: BlocBuilder<SelectionCubit, SelectionState>(
              builder: (context, state) {
                return GridView.builder(
                  itemCount: containerData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.read<SelectionCubit>().toggleSelection(index);
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: state.selectedList[index]
                              ? const Color(0xffD6E4FF)
                              : const Color(0xffFAFAFA),
                          border: Border.all(
                            width: 1,
                            color: state.selectedList[index]
                                ? const Color(0xff3366FF)
                                : Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(10.0.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                containerData[index]['image'],
                                width: 60.w,
                                height: 55.h,
                                color: state.selectedList[index]
                                    ? const Color(0xff3366FF)
                                    : Colors.grey,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                containerData[index]['text'],
                                style:  TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate:
                      const SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: 10,
                          maxCrossAxisExtent: 220,
                          childAspectRatio: 2 / 2,
                          crossAxisSpacing: 20),
                );
              },
            ),
          ),
          Expanded(
              flex: 2,
              child: MainButton(buttonText: Text(S.of(context).Next), onPressed: () {
                Get.to(()=>PreferdLocation());
              },))
        ],
      ),
    );
  }
}

