import 'package:finalproject/Screens/cereate_acount/accoun_success.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../components/custom_main_button.dart';
import '../../../generated/l10n.dart';
import '../../hope_work_screen/cubit/selection_cubit.dart';
import '../../hope_work_screen/cubit/selection_state.dart';

class PreferdLocation extends StatelessWidget {
  final List<dynamic> containerData = [
    {'text': 'UnitedStates', "flag": "images/create_acount/flag1.png"},
    {'text': 'Malaysia', "flag": "images/create_acount/flag2.png"},
    {'text': 'Singapore', "flag": "images/create_acount/flag3.png"},
    {'text': 'Indonesia', "flag": "images/create_acount/flag4.png"},
    {'text': 'Philiphines', "flag": "images/create_acount/flag5.png"},
    {'text': 'Polandia', "flag": "images/create_acount/flag6.png"},
    {'text': 'India', "flag": "images/create_acount/flag7.png"},
    {'text': 'Vietnam', "flag": "images/create_acount/flag8.png"},
    {'text': 'China', "flag": "images/create_acount/flag9.png"},
    {'text': 'Chanada', "flag": "images/create_acount/flag10.png"},
    {'text': 'Saudia Arabia', "flag": "images/create_acount/flag11.png"},
    {'text': 'Argentina', "flag": "images/create_acount/flag12.png"},
    {'text': 'Brazil', "flag": "images/create_acount/flag13.png"},
  ];

  PreferdLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SelectionCubit(13),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 50.h, right: 24.w, left: 24.w),
          child: Column(
            children: [
              Text(
                S.of(context).WhereAreYouPreferdLocation,
                style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w500),
              ),
               SizedBox(
                height: 20.h,
              ),
              Text(
                S
                    .of(context)
                    .LetUsKnowWhereIsTheWorkLocationYouWantAtThisTimSoWeCanAdjustIt,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 30.h,
              ),
              DefaultTabController(
                length: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffF4F4F5),
                      borderRadius: BorderRadius.circular(25)),
                  child: TabBar(
                      onTap: (value) {
                        // var getDetailsScreen =
                        // BlocProvider.of<JobDetailsCubit>(context);
                        // getDetailsScreen.getJobDetails(counter: value);
                      },
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      indicator: BoxDecoration(
                          color: const Color(0xff091A7A),
                          borderRadius: BorderRadius.circular(25)),
                      tabs:  [
                        Tab(
                          text: S.of(context).WorkFormOffice,
                        ),
                        Tab(
                          text: S.of(context).RemoteWork,
                        )
                      ]),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              Text(
                S.of(context).SelectTheCountryYouWantForYourJob,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),

              Expanded(
                child: BlocBuilder<SelectionCubit, SelectionState>(
                  builder: (context, state) {
                    return GridView.builder(
                      itemCount: containerData.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            context
                                .read<SelectionCubit>()
                                .toggleSelection(index);
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
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  containerData[index]['flag'],
                                  width: 40.w,

                                ),
                                Center(
                                  child: Text(
                                    containerData[index]['text'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              mainAxisSpacing: 2,
                              maxCrossAxisExtent: 220,
                              childAspectRatio: 5 / 2,
                              crossAxisSpacing: 20),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0.h),
                child: MainButton(
                    buttonText: Text(S.of(context).Next),
                    onPressed: () {
                      Get.to(const AccountSuccess());
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
