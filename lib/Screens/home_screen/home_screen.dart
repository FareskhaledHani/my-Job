import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Screens/home_screen/constant.dart';
import 'package:finalproject/Screens/home_screen/search_screan.dart';
import 'package:finalproject/Screens/job_details/get_job_details_cubit/catogry_model.dart';
import 'package:finalproject/Screens/job_details/job_details_screan.dart';
import 'package:finalproject/Screens/reset_account/check_email_screen.dart';
import 'package:finalproject/Screens/reset_account/create_new_password_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:finalproject/Screens/slider_screen/slider_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(20.0).r,
            child: Column(
              children: [
                Container(
                  height: 62.h,
                  width: 400.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hi, Rafif Dian👋',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          Image.asset('images/home_screen/Notification.png')
                        ],
                      ),
                      Text(
                        'Create a better future for yourself here',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SearchBox(
                  onpressed: () {
                    Get.to(() => SearchScrean());
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Suggested Job',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    TextButton(onPressed: () {}, child: Text('View all'))
                  ],
                ),
                CarouselSlider(
                  items: carusal2
                      .map(
                        (item) => Container(
                          height: 330.h,
                          child: item,
                        ),
                      )
                      .toList(),
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    height: 201.5.h,
                    autoPlay: false,
                    animateToClosest: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 1.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Job",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    TextButton(onPressed: () {}, child: Text('View all')),
                  ],
                ),
                InkWell(
                  onTap:(){ Get.to(()=>JobDetailsScreanState());},
                  child:
                 CategoriesListView()
                ),
              ],
            ),
          ),
          bottomNavigationBar: IconBar()
      ),
    );
  }
}

class CategoriesListView extends StatelessWidget {
   CategoriesListView({
    Key? key,
  }) : super(key: key);
  List<CatogryModel> Categories= [
    CatogryModel(NameJob: 'Senior Ui', photoJob: 'images/home_screen/Twitter Logo.png', descriptionJob: 'Twitter • Jakarta, Indonesia', Icon:  Icon(FontAwesomeIcons.bookmark), Jobtybe: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        JobTybBox(
          name: 'FullTime',
          height: 26.h,
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Remote',
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Senior',
        ),
      ],
    ), JobMoney: '15K/month'),
    CatogryModel(NameJob: 'Senior UI', photoJob: 'images/home_screen/Twitter Logo.png', descriptionJob: 'Twitter • Jakarta, Indonesia', Icon:  Icon(FontAwesomeIcons.bookmark), Jobtybe: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        JobTybBox(
          name: 'FullTime',
          height: 26.h,
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Remote',
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Senior',
        ),
      ],
    ), JobMoney: '15K/month'),
    CatogryModel(NameJob: 'Senior UI', photoJob: 'images/home_screen/Twitter Logo.png', descriptionJob: 'Twitter • Jakarta, Indonesia', Icon:  Icon(FontAwesomeIcons.bookmark), Jobtybe: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        JobTybBox(
          name: 'FullTime',
          height: 26.h,
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Remote',
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Senior',
        ),
      ],
    ), JobMoney: '15K/month'),
    CatogryModel(NameJob: 'Senior UI', photoJob: 'images/home_screen/Twitter Logo.png', descriptionJob: 'Twitter • Jakarta, Indonesia', Icon:  Icon(FontAwesomeIcons.bookmark), Jobtybe: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        JobTybBox(
          name: 'FullTime',
          height: 26.h,
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Remote',
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Senior',
        ),
      ],
    ), JobMoney: '15K/month'),
    CatogryModel(NameJob: 'Senior UI', photoJob: 'images/home_screen/Twitter Logo.png', descriptionJob: 'Twitter • Jakarta, Indonesia', Icon:  Icon(FontAwesomeIcons.bookmark), Jobtybe: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        JobTybBox(
          name: 'FullTime',
          height: 26.h,
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Remote',
        ),
        SizedBox(width: 5.w),
        JobTybBox(
          height: 26.h,
          name: 'Senior',
        ),
      ],
    ), JobMoney: '15K/month'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380.w,
      height: 209.h,
      child: ListView.builder(
          itemCount:Categories.length,
          itemBuilder: (context,index){
        return CatogryCard(Category: Categories[index],);
      }),
    );
  }
}

class CatogryCard extends StatelessWidget {
  const CatogryCard({
    Key? key,required this.Category
  }) : super(key: key);
  final CatogryModel Category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103.h,
      width: 380.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                      Category.photoJob),
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleJobDetails(),
                      SizedBox(height: 5.h),
                      DescriptionDetailsJob(),
                    ],
                  ),
                ],
              ),
              Icon(FontAwesomeIcons.bookmark)
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
                    name: 'FullTime',
                    height: 26.h,
                  ),
                  SizedBox(width: 5.w),
                  JobTybBox(
                    height: 26.h,
                    name: 'Remote',
                  ),
                  SizedBox(width: 5.w),
                  JobTybBox(
                    height: 26.h,
                    name: 'Senior',
                  ),
                ],
              ),
              Text('15K/month'),

            ],
          ),
          SizedBox(height: 10.h,),
          const Divider(thickness: 1,height: 1,color: Colors.black12,endIndent: 10,)
        ],
      ),
    );
  }
}



