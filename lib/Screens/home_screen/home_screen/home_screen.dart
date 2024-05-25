import 'package:finalproject/Screens/home_screen/home_screen/service/get_all_jobs_services.dart';
import 'package:finalproject/Screens/job_details/models/card_employees_model.dart';
import 'package:finalproject/Screens/home_screen/home_screen/models/suggestion_job.dart';
import 'package:finalproject/Screens/home_screen/home_screen/service/services.dart';
import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/custum_job_type_box.dart';
import '../../../core/cash_helper.dart';
import '../../../generated/l10n.dart';
import '../../job_details/screen/job_details_screan.dart';
import '../../job_details/services/job_details_service.dart';
import '../component/custom_container_search_button.dart';
import '../component/custum_widget.dart';
import '../component/custom_carusal_slider_container.dart';
import '../notification_screen/notification_screen/notification_screen.dart';
import '../profile_screen/models/profile_model.dart';
import '../profile_screen/service/profile_service.dart';
import '../saved_screen/cubits_fav/post_favorite_cubit/post_favorite_cubit.dart';
import '../saved_screen/model/post_favorite_model.dart';
import 'cubit/book_mark_cubit_list/book_mark_cubit_list.dart';
import 'models/all_jobs_model.dart';

SuggestionJobModel? sugesstionJobModel;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiServices apiServices = ApiServices();
  PostFavoriteService postFavoriteService = PostFavoriteService();
  JobDetailsServices jobDetailsServices = JobDetailsServices();
  ProfileService profileService = ProfileService();
  JobDetailsModel? jobDetailsModel;
  GetAllJobsService getAllJobsService =GetAllJobsService();
  TextEditingController searchController =TextEditingController();

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () async {
      sugesstionJobModel = await ApiServices().getSuggestionJob();
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => BookmarkCubitList(),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Column(
              children: [
                SizedBox(
                  height: 66.h,
                  width: 400.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FutureBuilder<ProfileName>(
                            future: profileService.profileService(),
                            builder: (BuildContext context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const Center(child: SizedBox());
                              } else if (snapshot.hasError) {
                                return Text(
                                  '${S.of(context).hi}${CacheHelper.getName()} 👋',
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w500),
                                );
                              } else {
                                final String name = snapshot.data!.name;
                                CacheHelper.setName(name);
                                return Text(
                                  '${S.of(context).hi}$name 👋',
                                  style: TextStyle(
                                      fontSize: 28.sp,
                                      fontWeight: FontWeight.w500),
                                );
                              }
                            },
                          ),
                           IconNotification(
                            count: 1,
                            image: 'images/home_screen/notification.png', onTap: () { Get.to(() => const  NotificationScreen());  },
                          ),
                        ],
                      ),
                      Text(
                        S.of(context).CreateAbetterFutureForYourselfHere,
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                    onTap: () {
                      Get.to(() =>  SearchScreen(searchController: searchController, jobDetailsServices: jobDetailsServices,));
                    },
                    child: const CustomContainerSearchButton()),
                // titleSearch: S.of(context).EnterYourSearchQuery,
                SizedBox(
                  height: 5.h,
                ),
                // ListTile(
                //   minVerticalPadding: 20.h,
                //   horizontalTitleGap: 5,
                //   tileColor: const Color(0xffD6E4ff),
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   leading: Image.asset('images/home_screen/Twitter Logo.png'),
                //   title: const Text('Twitter'),
                //   subtitle: const Text(
                //     'Waiting to be selected by the twitter team',
                //     style: TextStyle(
                //         fontSize: 12,
                //         fontWeight: FontWeight.w400,
                //         color: Color(0xff374151)),
                //   ),
                //   trailing: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       minimumSize: Size(1.w, 35.h),
                //       primary: const Color(0xffADC8ff),
                //       elevation: 0,
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(30)),
                //     ),
                //     onPressed: (){},
                //     // onPressed: () async {
                //     //   sugesstionJobModel = await ApiServices().getSuggestionJob();
                //     //
                //     //   // SugesstionJobModel? sugesstionJobModel=   await ApiServices().getSuggestionJob();
                //     // },
                //     child: Text(
                //       S.of(context).Submitted,
                //       style:const TextStyle(color: Color(0xff1939B7)),
                //     ),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).SuggestedJob,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {}, child: Text(S.of(context).ViewAll))
                  ],
                ),

                CustomCarouselSlider(
                  apiServices: apiServices,
                  postFavoriteService: postFavoriteService,
                  jobDetailsServices: jobDetailsServices,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      S.of(context).RecentJob,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.sp),
                    ),
                    TextButton(
                        onPressed: () {}, child: Text(S.of(context).ViewAll)),
                  ],
                ),

                Expanded(
                  child: SizedBox(
                    child: FutureBuilder<List<AllJobModel>>(
                      future: getAllJobsService.getAllJob(),
                      builder: (BuildContext context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const CircularProgressIndicator();
                        } else if (snapshot.hasError) {
                          return const SizedBox();
                        } else { return ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (BuildContext context, index) {
                            final jobCard = snapshot.data;
                            return Card(
                              elevation: 13,
                              child: Column(
                                children: [
                                  ListTile(
                                      onTap: (){Get.to(() => JobDetailsScreen(jobDetailsServices: jobDetailsServices, jobId:jobCard![index].id , ));},
                                      dense: true,
                                      leading: Container(
                                        width: 45.w,
                                        height: 35.h,
                                        decoration: BoxDecoration(
                                            color: Colors.orange,
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    jobCard![index].image),
                                                fit: BoxFit.fill)),
                                      ),
                                      title: Text(jobCard[index].name),
                                      subtitle: SizedBox(
                                          width: 100.w,
                                          child: Text(
                                            '${jobCard[index].compName}.${jobCard[index].location}',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          )),
                                      trailing:  BlocBuilder<BookmarkCubitList, List<int>>(
                                        builder: (context, bookmarkedIndices) {
                                          final isBookmarked = bookmarkedIndices.contains(index);
                                          return IconButton(
                                            icon: Icon(
                                              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                                              color: isBookmarked ? Colors.black : Colors.black,
                                              size: 30.sp,
                                            ),
                                            onPressed: ()async {
                                              context.read<BookmarkCubitList>().toggleBookmark(index);
                                              final modelPostFav =PostModelJobFavorite(location: jobCard[index].location, image: jobCard[index].image, jobId:jobCard[index].id , like: 1);
                                              await PostFavoriteService().postFavoriteJob(modelPostFav);
                                            },);
                                        },
                                      )
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.0.w),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        JobTybBox(
                                            name: jobCard[index].jobTimeType,
                                            height: 27.0.h),
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                text: "\$${jobCard[index].salary}",
                                                style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black),
                                              ),
                                              TextSpan(
                                                text: '/${S.of(context).Month}',
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey),
                                              )
                                            ])),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );}

                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
