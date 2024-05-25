import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';
import '../../../job_details/screen/job_details_screan.dart';
import '../../../job_details/services/job_details_service.dart';
import '../../component/custom_catogry.dart';
import '../../home_screen/cubit/book_mark_cubit_list/book_mark_cubit_list.dart';
import '../../saved_screen/cubits_fav/post_favorite_cubit/post_favorite_cubit.dart';
import '../../saved_screen/model/post_favorite_model.dart';
import '../cubits/filter_cubit/filter_cubit.dart';
import '../models/filter_model.dart';
import '../models/search_model.dart';

class BodyOfSearchScreen extends StatelessWidget {
  const BodyOfSearchScreen({
    Key? key,
    required this.stateSearch,
    required this.jobDetailsServices,
  }) : super(key: key);

  final dynamic stateSearch;
  final JobDetailsServices jobDetailsServices;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, filterState) {
        if (filterState is FilterInitial) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: stateSearch.jobs.length,
              itemBuilder: (context, index) {
                Job job = stateSearch.jobs[index];
                return BlocBuilder<BookmarkCubitList, List<int>>(
                  builder: (context, bookmarkedIndices) {
                    final isBookmarked = bookmarkedIndices.contains(index);
                    return CatogryCards(
                      nameJob: job.name,
                      mony: job.salary,
                      image: job.image,
                      jobTimeType: job.jobTimeType,
                      nameComp: job.compName,
                      location: job.location,
                      onTap: () {
                        Get.to(() => JobDetailsScreen(
                          jobDetailsServices: jobDetailsServices,
                          jobId: job.id,
                        ));
                      },
                      iconButton: Icon(
                        isBookmarked
                            ? Icons.bookmark
                            : Icons.bookmark_border,
                        color: isBookmarked ? Colors.black : Colors.black,
                        size: 30.sp,
                      ),
                      onTapIcon: () async {
                        context
                            .read<BookmarkCubitList>()
                            .toggleBookmark(index);
                        final modelPostFav = PostModelJobFavorite(
                            location: job.location,
                            image: job.image,
                            jobId: job.id,
                            like: 1);
                        await PostFavoriteService()
                            .postFavoriteJob(modelPostFav);
                      },
                    );
                  },
                );
              },
            ),
          );
        } else if (filterState is GetFilterJobFailureState) {
          return Column(
            children: [
              const Icon(FontAwesomeIcons.triangleExclamation,
                  color: Colors.red),
              SizedBox(height: 20.h),
              Text(S.of(context).PleaseCheckYourNetworkAndTryAgain)
            ],
          );
        } else if (filterState is GetFilterJobLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (filterState is GetFilterJobSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: filterState.jobsFilter.length,
              itemBuilder: (context, index) {
                JobFilter job = filterState.jobsFilter[index];
                return BlocBuilder<BookmarkCubitList, List<int>>(
                  builder: (context, bookmarkedIndices) {
                    final isBookmarked = bookmarkedIndices.contains(index);
                    return CatogryCards(
                      nameJob: job.name,
                      mony: job.salary,
                      image: job.image,
                      jobTimeType: job.jobTimeType,
                      nameComp: job.compName,
                      location: job.location,
                      onTap: () {
                        Get.to(() => JobDetailsScreen(
                          jobDetailsServices: jobDetailsServices,
                          jobId: job.id,
                        ));
                      },
                      iconButton: Icon(
                        isBookmarked
                            ? Icons.bookmark
                            : Icons.bookmark_border,
                        color: isBookmarked ? Colors.black : Colors.black,
                        size: 30.sp,
                      ),
                      onTapIcon: () async {
                        context
                            .read<BookmarkCubitList>()
                            .toggleBookmark(index);
                        final modelPostFav = PostModelJobFavorite(
                            location: job.location,
                            image: job.image,
                            jobId: job.id,
                            like: 1);
                        await PostFavoriteService()
                            .postFavoriteJob(modelPostFav);
                      },
                    );
                  },
                );
              },
            ),
          );
        } else {
          return const Center(
            child: Text('Unknown State'),
          );
        }
      },
    );
  }
}