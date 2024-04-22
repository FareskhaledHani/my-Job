import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../components/custum_app_bar_three_widget.dart';
import '../../../components/custum_job_type_box.dart';
import '../../../generated/l10n.dart';
import '../components/widgets.dart';
import '../cubits/get_job_details_cubit/get_job_details_cubit.dart';
import '../cubits/select_item_button/drop_down_button.dart';

class JobDetailsScreanState extends StatelessWidget {
 const JobDetailsScreanState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => JobDetailsCubit(),
               ),
               BlocProvider(
                 create: (context) => DropdownCubit(),
            ),
          ],
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  AppBarThreeWidget(
                    Tilte:S.of(context).JobDetails,
                    onpressed: () {},
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                   Image.asset('images/home_screen/Twitter Logo.png'),

                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'Twitter • Jakarta, Indonesia',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                        const Description(),
                        const Company(),
                        People(
                          number: '6 ${S.of(context).EmployeesFor}',
                          job: 'UI/UXDesihn',
                        ),
                      ],
                    ),
                  ),
                  // Expanded(
                  //  child: BlocBuilder<JobDetailsCubit,JobDetailsState>(
                  //    builder: (context,state){
                  //      if (state is DescriptionState){
                  //        return Indicator();
                  //      }
                  //      else if (state is DetailsJobLoading){
                  //        return Company();
                  //      }
                  //      else {
                  //        return  People(job: 'UI/UX Design', number: '6 Employees',);
                  //
                  //      }
                  //    },
                  //  ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}











