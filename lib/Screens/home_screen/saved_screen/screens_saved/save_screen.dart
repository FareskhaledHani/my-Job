import 'package:finalproject/Screens/home_screen/component/custum_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../components/custum_title_in_cotainer.dart';
import '../../../../generated/l10n.dart';
import '../../../apply_job/screen_apply_job/bio_data_screen.dart';
import '../../../bottom_nav_bar/views/bottom_nav_bar_view.dart';
import '../../../job_details/screen/job_details_screan.dart';
import '../../../job_details/services/job_details_service.dart';
import '../../component/custom_list_tile_save.dart';
import '../cubits_fav/deleate_favorite_cubit/delete_favorite_cubit.dart';
import '../cubits_fav/get_favorite_cubit/get_favorite_cubit.dart';
import '../model/get_favorite_model.dart';
import 'nothing_save_screen.dart';

class SaveScreen extends StatefulWidget {
  const SaveScreen({Key? key}) : super(key: key);

  @override
  State<SaveScreen> createState() => _SaveScreenState();
}


class _SaveScreenState extends State<SaveScreen> {

  bool shouldReload = false; // State variable to trigger reload
  // void initState() {
  //   Future.delayed(const Duration(seconds: 4), () async {
  //   });
  //   super.initState();
  // }
  void reloadFutureBuilder() {
    Future.delayed(const Duration(seconds: 1), (){
      setState(() {
        shouldReload = !shouldReload; // Toggle the state variable
      });
    });

  }
  final JobDetailsServices jobDetailsServices= JobDetailsServices();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            S.of(context).Save,
            style:  TextStyle(
                fontWeight: FontWeight.w500, fontSize: 22.sp, color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10).w,
          child: FutureBuilder<List<GetFavoriteJob>>(
            future: GetFavoriteServices().getFavoriteJobs(),
            builder: (BuildContext context,
                AsyncSnapshot<List<GetFavoriteJob>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              else if (snapshot.hasError) {
                return Center(
                    child:
                        Text(S.of(context).PleaseCheckYourNetworkAndTryAgain));
              }
              else {
                final List<GetFavoriteJob>? favoriteJobs = snapshot.data;

                if (favoriteJobs == null ) {
                  return const Text('is empty');
                }
                else if (favoriteJobs.isEmpty ){
                  return const NoBodySaved();
                }
                return Column(
                  children: [
                    TitleInContainer(
                      title: '${favoriteJobs.length} ${S.of(context).JobSaved}',
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: favoriteJobs.length,
                        itemBuilder: (BuildContext context, int index) {
                          final job = favoriteJobs[index];
                          return CustomListTileSave(
                            nameJob: job.getJobs.name,
                            locationJob: job.getJobs.location,
                            iconJobConnection: job.getJobs.image,
                            days: 'Posted 2 days ago',
                            nameCompany: job.getJobs.companyName,
                            onTapIcon: () {

                              print('taped==================$index');
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  isDismissible: true,
                                  enableDrag: true,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30.sp),
                                    ),
                                  ),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  context: context,
                                  builder: (BuildContext context) {
                                    return BlocProvider(
                                      create: (context) =>
                                          DeleteFavoriteCubit(),
                                      child: Container(
                                        height: 250.h,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topRight:
                                                    Radius.circular(20.sp),
                                                topLeft:
                                                    Radius.circular(20.sp))),
                                        child: Padding(
                                          padding: EdgeInsets.all(20.0.sp),
                                          child: BlocBuilder<
                                              DeleteFavoriteCubit,
                                              DeleteFavoriteState>(
                                            builder:
                                                (context, deleteFavoriteState) {
                                              if (deleteFavoriteState
                                                  is DeleteFavoriteInitial) {
                                                return Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 20.h,
                                                    ),
                                                    MiniDialogIcon(
                                                      textButtonDialog: S
                                                          .of(context)
                                                          .AppliedJob,
                                                      iconButtonDialog: Icons
                                                          .shopping_bag_rounded,
                                                      ontap: () {
                                                        Get.to(()=>BioData(jobId: job.getJobs.id,));
                                                        print(
                                                            'taped==================$index');
                                                      },
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    MiniDialogIcon(
                                                      textButtonDialog: S
                                                          .of(context)
                                                          .ShareVia,
                                                      iconButtonDialog: Icons
                                                          .ios_share_rounded,
                                                      ontap: () {

                                                      },
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    MiniDialogIcon(
                                                      textButtonDialog: S
                                                          .of(context)
                                                          .CancelSave,
                                                      iconButtonDialog:
                                                          FontAwesomeIcons
                                                              .bookmark,
                                                      ontap: () {
                                                        reloadFutureBuilder();
                                                        BlocProvider.of<DeleteFavoriteCubit>(context).deleteFavoriteJob(job.jobId);
                                                        Future.delayed( const Duration(seconds: 1), () {
                                                          Navigator.pop(context);
                                                          // Navigator.pop(context);
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                );
                                              }
                                              else if (deleteFavoriteState
                                                  is DeleteFavoriteJobLoadingState) {
                                                return const Center(
                                                  child: CircularProgressIndicator(),
                                                );
                                              }
                                              else if (deleteFavoriteState
                                                  is DeleteFavoriteJobSuccess) {
                                                return Center(child: Text(S.of(context).CancelSave));
                                              }
                                              else if (deleteFavoriteState
                                                  is DeleteFavoriteJobFailureState) {
                                                return Text(S.of(context).PleaseCheckYourNetworkAndTryAgain);
                                              } else {
                                                return const Center(
                                                  child: Text('Unknown State'),
                                                );
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            }, onTapListTile: () {
                            Get.to(()=>JobDetailsScreen(jobDetailsServices: jobDetailsServices, jobId: job.getJobs.id,));
                          },
                          );
                        },
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
