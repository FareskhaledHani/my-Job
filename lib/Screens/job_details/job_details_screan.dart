import 'package:finalproject/Screens/apply_job/apply_job_screan.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/home_screen/home_screen.dart';
import 'package:finalproject/Screens/job_details/job_details_screan.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'get_job_details_cubit/get_job_details_cubit.dart';

class JobDetailsScreanState extends StatelessWidget {
  List<bool>isSelected=[true,false,false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<JobDetailsCubit, NavigationItem>(
  builder: (context, state) {
    Widget currentWidget;
    return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              AppBarThreeWidget(Tilte: 'JobDetails', onpressed: () {},),
              SizedBox(height: 30.h,),
              InkWell(
                onTap: (){Get.to(()=>ApplyJob());},
                child: Image.asset(
                    'images/home_screen/Twitter Logo.png'),
              ),
              SizedBox(height: 10.h,),
              TitleJobDetails(),
              SizedBox(height: 10.h,),
              DescriptionDetailsJob(),
              SizedBox(height: 20.h,),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    JobTybBox(
                      height: 26.h,
                      name: 'FullTime',),
                    SizedBox(width: 10.w,),
                    JobTybBox(
                      height: 26.h,
                      name: 'OnSite',),
                    SizedBox(width: 10.w,),
                    JobTybBox(
                      height: 26.h,
                      name: 'Senior',),
                  ],),
              ),
              SizedBox(height: 30.h,),
              // Container(
              //   height: 45.h,
              //   width: MediaQuery
              //       .of(context)
              //       .size
              //       .width,
              //   decoration: BoxDecoration(
              //       color: Color(0xFFF4F4F5),
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //
              //       ElevatedButton(onPressed: () {
              //
              //
              //       },
              //         child: Text('Desicription', style: TextStyle(
              //             color: Colors.black54,
              //             fontWeight: FontWeight.w500, fontSize: 16.sp)),
              //         style: ElevatedButton
              //             .styleFrom(
              //             elevation: 0,
              //             //fixedSize: Size(MediaQuery.of(context).size.width, 50.w),
              //
              //             fixedSize: Size(130.5.w, 40.h),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20)),
              //             primary: MyControoooller.colorRemote.value
              //         ),)
              //
              //
              //       ElevatedButton(onPressed: () {
              //
              //
              //       },
              //         child: Text('Company', style: TextStyle(
              //             color: Colors.black54,
              //             fontWeight: FontWeight.w500, fontSize: 16.sp),),
              //         style: ElevatedButton
              //             .styleFrom(
              //             elevation: 0,
              //             //fixedSize: Size(MediaQuery.of(context).size.width, 50.w),
              //
              //             fixedSize: Size(130.5.w, 40.h),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20)),
              //             primary: MyControoooller.colorRemote.value
              //         ),),
              //
              //       ElevatedButton(onPressed: () {
              //         MyControoooller.changeColorOffice();
              //       },
              //         child: Text('People', style: TextStyle(
              //             color: Colors.black54,
              //             fontWeight: FontWeight.w500, fontSize: 16.sp)),
              //         style: ElevatedButton
              //             .styleFrom(
              //             elevation: 0,
              //             //fixedSize: Size(MediaQuery.of(context).size.width, 50.w),
              //
              //             fixedSize: Size(130.5.w, 40.h),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20)),
              //             primary: MyControoooller.colorRemote.value
              //         ),),
              //     ],),
              // ),

              Container(
                width: MediaQuery.of(context).size.width,
                height: 70.h,

                decoration: BoxDecoration(
                  color: Color(0xffF4F4F5),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  ]
                ),
              )
            ],
          ),
        );
  },
),
      ),
    );
  }
}
class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text('Description screen');
  }
}


class Company extends StatelessWidget {
  const Company({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text('Description screen');
  }
}

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text('Description screen');
  }
}