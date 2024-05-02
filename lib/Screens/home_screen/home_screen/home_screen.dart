import 'package:finalproject/Screens/job_details/models/card_employees_model.dart';
import 'package:ionicons/ionicons.dart';
import 'package:finalproject/Screens/home_screen/home_screen/models/suggestion_job.dart';
import 'package:finalproject/Screens/home_screen/home_screen/service/services.dart';
import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screan.dart';
import 'package:finalproject/models/catogry_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/custum_job_type_box.dart';
import '../../../components/custum_search_box.dart';
import '../../../core/cash_helper.dart';
import '../../../generated/l10n.dart';
import '../../job_details/screen/job_details_screan.dart';
import '../../job_details/services/job_details_service.dart';
import '../component/custom_container_search_button.dart';
import '../component/custum_widget.dart';

import '../component/custom_carusal_slider_container.dart';
import '../notification_screen/notification_screen/notification_screen.dart';
import '../saved_screen/cubits_fav/post_favorite_cubit/post_favorite_cubit.dart';

SugesstionJobModel? sugesstionJobModel;

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

//
class _HomeScreenState extends State<HomeScreen> {
  ApiServices apiServices = ApiServices();
  PostFavoriteService postFavoriteService =PostFavoriteService();
  JobDetailsServices jobDetailsServices =JobDetailsServices();
  JobDetailsModel ?jobDetailsModel ;

  // List<SugesstionJobModel>suggestionJob=[];
  //  dynamic sug;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () async {
      sugesstionJobModel = await ApiServices().getSuggestionJob();
    });

    super.initState();
  }

  // late SugesstionJobModel suggesstionJobModel ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0).r,
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
                        Text(
                          '${S.of(context).hi}, Rafif Dian👋',
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        //  Image.asset('images/home_screen/Notification.png')
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const NotificationScreen());
                          },
                          child: const IconNotification(
                            count: 1,
                            image: 'images/home_screen/notification.png',
                          ),
                        ),
                      ],
                    ),
                    Text(
                      S.of(context).CreateAbetterFutureForYourselfHere,
                      style:  TextStyle(
                          fontSize: 16.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
               SizedBox(height: 10.h),
              GestureDetector(
                  onTap: (){
                    Get.to(() => SearchScrean());
                  },
                  child: const CustomContainerSearchButton()),
              // titleSearch: S.of(context).EnterYourSearchQuery,
              SizedBox(
                height: 5.h,
              ),
              ListTile(
                minVerticalPadding: 20.h,
                horizontalTitleGap: 5,
                tileColor: const Color(0xffD6E4ff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: Image.asset('images/home_screen/Twitter Logo.png'),
                title: const Text('Twitter'),
                subtitle: const Text(
                  'Waiting to be selected by the twitter team',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff374151)),
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(1.w, 35.h),
                    primary: const Color(0xffADC8ff),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: (){},
                  // onPressed: () async {
                  //   sugesstionJobModel = await ApiServices().getSuggestionJob();
                  //
                  //   // SugesstionJobModel? sugesstionJobModel=   await ApiServices().getSuggestionJob();
                  // },
                  child: Text(
                    S.of(context).Submitted,
                    style:const TextStyle(color: Color(0xff1939B7)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).SuggestedJob,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {}, child: Text(S.of(context).ViewAll))
                ],
              ),

              CustomCarouselSlider(
                apiServices: apiServices, postFavoriteService: postFavoriteService, jobDetailsServices: jobDetailsServices,
              ),
              //custum_carousal_slider(buttonCarouselController: buttonCarouselController),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).RecentJob,
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
                  ),
                  TextButton(
                      onPressed: () {}, child: Text(S.of(context).ViewAll)),
                ],
              ),

              Expanded(
                child: SizedBox(
                  child: ListView.builder(
                    itemCount: Categories.length,
                    itemBuilder: (BuildContext context, index) {
                      return CatogryCard(
                        Category: Categories[index],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        //    bottomNavigationBar: IconBar()
      ),
    );
  }
}

List<CatogryModel> Categories = [
  CatogryModel(
      Icon: FontAwesomeIcons.bookmark,
      descriptionJob: 'Twitter • Jakarta, Indonesia ',
      photoJob: 'images/home_screen/Twitter Logo.png',
      NameJob: 'Senior Ui Designer',
      Jobtybe: 'Full Time',
      JobMoney: '15k/month'),
  CatogryModel(
      Icon: FontAwesomeIcons.bookmark,
      descriptionJob: 'Twitter • Jakarta, Indonesia ',
      photoJob: 'images/home_screen/Twitter Logo.png',
      NameJob: 'Senior Ui Designer',
      Jobtybe: 'Full Time',
      JobMoney: '15k/month'),
  CatogryModel(
      Icon: FontAwesomeIcons.bookmark,
      descriptionJob: 'Twitter • Jakarta, Indonesia ',
      photoJob: 'images/home_screen/Twitter Logo.png',
      NameJob: 'Senior Ui Designer',
      Jobtybe: 'Full Time',
      JobMoney: '15k/month'),
  CatogryModel(
      Icon: FontAwesomeIcons.bookmark,
      descriptionJob: 'Twitter • Jakarta, Indonesia ',
      photoJob: 'images/home_screen/Twitter Logo.png',
      NameJob: 'Senior Ui Designer',
      Jobtybe: 'Full Time',
      JobMoney: '15k/month'),
  CatogryModel(
      Icon: FontAwesomeIcons.bookmark,
      descriptionJob: 'Twitter • Jakarta, Indonesia ',
      photoJob: 'images/home_screen/Twitter Logo.png',
      NameJob: 'Senior Ui Designer',
      Jobtybe: 'Full Time',
      JobMoney: '15k/month')
];

class CatogryCard extends StatelessWidget {
  const CatogryCard({Key? key, required this.Category}) : super(key: key);
  final CatogryModel Category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 104.h,
      width: 380.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(Category.photoJob),
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Category.NameJob,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        Category.descriptionJob,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(FontAwesomeIcons.bookmark)
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  JobTybBox(
                    name: Category.Jobtybe,
                    height: 26.h,
                  ),
                  SizedBox(width: 5.w),
                  JobTybBox(
                    height: 26.h,
                    name: Category.Jobtybe,
                  ),
                  SizedBox(width: 5.w),
                  JobTybBox(
                    height: 26.h,
                    name: Category.Jobtybe,
                  ),
                ],
              ),
              Text(Category.JobMoney),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Colors.black12,
            endIndent: 10,
          )
        ],
      ),
    );
  }
}
