import 'package:finalproject/Screens/job_details/services/job_details_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/custum_app_bar_three_widget.dart';
import '../../../components/custum_job_type_box.dart';
import '../../../generated/l10n.dart';
import '../components/custom_company_widget.dart';
import '../components/custom_people_widget.dart';
import '../components/custom_description_widget.dart';
import '../models/card_employees_model.dart';

class JobDetailsScreen extends StatelessWidget {
  const JobDetailsScreen({
    Key? key,
    required this.jobDetailsServices,
    required this.jobId,
  }) : super(key: key);
  final JobDetailsServices jobDetailsServices;
  final int jobId;

  // final JobDetailsModel jobDetailsModel;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 20.0.h, right: 20.w, left: 20.w),
          child: FutureBuilder<JobDetailsModel>(
            future: jobDetailsServices.getJobDetails(jobId),
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final jobDetails = snapshot.data!;
                return Column(
                  children: [
                    AppBarThreeWidget(
                      title: S.of(context).JobDetails,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      height: 50.h,
                      width: 50.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              // Shadow color
                              spreadRadius: 5,
                              // Spread radius
                              blurRadius: 7,
                              // Blur radius
                              offset: const Offset(
                                  3, 3), // Offset from the container
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(jobDetails.image),
                          )),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      jobDetails.name,
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 230.w,
                      child: Text(
                        '${jobDetails.compName}. ${jobDetails.location}',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12.sp),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          JobTybBox(
                            height: 26.h,
                            name: 'FullTime',
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          JobTybBox(
                            height: 26.h,
                            name: 'OnSite',
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          JobTybBox(
                            height: 26.h,
                            name: 'Senior',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
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
                              color: const Color(0xff02337A),
                              borderRadius: BorderRadius.circular(25)),
                          tabs: const [
                            Tab(
                              text: 'Description',
                            ),
                            Tab(
                              text: 'Company',
                            ),
                            Tab(
                              text: 'People',
                            )
                          ]),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Description(
                            jobDescription: jobDetails.jobDescription,
                            skillRequired: jobDetails.jobSkill,
                            jobId: jobDetails.id,
                          ),
                          Company(
                            email: jobDetails.compEmail,
                            aboutCompany: jobDetails.aboutComp,
                            website: jobDetails.compWebsite,
                            jobId: jobDetails.id,
                          ),
                          People(
                            number: '6 ${S.of(context).EmployeesFor}',
                            job: 'UI/UXDesihn',
                            jobId: jobDetails.id,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
