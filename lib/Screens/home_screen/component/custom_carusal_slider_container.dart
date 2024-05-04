import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Screens/home_screen/home_screen/models/suggestion_job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../generated/l10n.dart';
import '../../job_details/screen/job_details_screan.dart';
import '../../job_details/services/job_details_service.dart';
import '../home_screen/cubit/icon_cubit/icon_cubit.dart';
import '../home_screen/service/services.dart';
import '../saved_screen/cubits_fav/post_favorite_cubit/post_favorite_cubit.dart';
import '../saved_screen/model/post_favorite_model.dart';


class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    Key? key,
    required this.apiServices,required this.postFavoriteService,required this.jobDetailsServices,
  }) : super(key: key);

  final ApiServices apiServices;
  final bool suggestionSelected = false;
  final PostFavoriteService postFavoriteService ;
  final JobDetailsServices jobDetailsServices ;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SugesstionJobModel>(
      future: apiServices.getSuggestionJob(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Column(
            children: [
              const Icon(FontAwesomeIcons.triangleExclamation,color: Colors.red),
              SizedBox(height: 20.h),
              Text(S.of(context).PleaseCheckYourNetworkAndTryAgain)
            ],
          );
        } else {
          final suggestionJob = snapshot.data!;
          return BlocProvider(
            create: (context) => BookmarkCubit(),
            child: CarouselSlider.builder(
              itemCount: 1,
              options: CarouselOptions(
                height: 201.5.h,
                autoPlay: false,
                animateToClosest: false,
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
              ),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return GestureDetector(
                  onTap: (){Get.to(() => JobDetailsScreen(jobDetailsServices: jobDetailsServices, jobId:suggestionJob.id , ));},
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF091A7A)),
                      height: 199.5.h,
                      width: 370.w,
                      child: Padding(
                        padding:  EdgeInsets.all(20.0.sp),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 50.w,height: 40.h,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(suggestionJob.image),
                                              fit: BoxFit.fill
                                          ),
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.circular(10)
                                      ),

                                    ),
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          suggestionJob.name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18),
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          suggestionJob.compName,
                                          style: const TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                BlocBuilder<BookmarkCubit, BookmarkState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      icon: Icon(
                                        state == BookmarkState.unBookMarked ? Icons.bookmark_border : Icons.bookmark,
                                        color: state == BookmarkState.unBookMarked ? Colors.white : Colors.white,size: 40.sp,
                                      ),
                                      onPressed: ()async {
                                          //print('tapppppppppped========='+index.toString());
                                        context.read<BookmarkCubit>().toggleBookmark();
                                        final modelPostFav =PostModelJobFavorite(location: suggestionJob.location, image: suggestionJob.image, jobId:suggestionJob.id , like: 1);
                                        await PostFavoriteService().postFavoriteJob(modelPostFav);
                                      },);
                                  },
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 100.w,
                                  height: 35.h,
                                  decoration: BoxDecoration(
                                      color: const Color(0x0fffffff),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                      child: Text(
                                        suggestionJob.jobTimeType,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      )),
                                ),
                                SizedBox(width: 5.w),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: "\$${suggestionJob.salary}",
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                       TextSpan(
                                        text: '/${S.of(context).Month}',
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                      )
                                    ])),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                18.0),
                                          ))),
                                  child:  Text(S.of(context).ApplyNow),
                                )
                              ],
                            ),
                          ],
                        ),
                      )),
                );
              },
            ),
          );
        }
      },
    );
  }
}
