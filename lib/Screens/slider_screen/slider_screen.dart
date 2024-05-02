import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/slider_screen/constan.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../components/custom_main_button.dart';
import '../../generated/l10n.dart';
import 'component/custum_slider_up_logo.dart';
import 'cubit/slider_cubit.dart';

class SliderScreens extends StatelessWidget {
   SliderScreens({Key? key}) : super(key: key);

   final controller =CarouselController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarouselCubit(),
      child: Scaffold(
        body: BodySlider(
          controller:controller,
          contents: contents,
        ),
      ),
    );
  }

  final List<Widget> contents = [
    Column(children: [
      ShaderMask(
        shaderCallback: (Rect bounds) {
          return const LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(Rect.fromLTRB(0, bounds.width, 0, 0));
        },
        blendMode: BlendMode.dstIn,
        child: SizedBox(
          width: double.infinity,
          height: 330.h,
          child: Image.asset(
            images[0],
            width: double.infinity,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30.w, top: 24.h, right: 30.w),
        child: Builder(builder: (context) {
          return Column(
            children: [
              RichTextExtractWidget(
                Text3: S.of(context).YourCareerFromNowOn,
                Text1: S.of(context).FindAJobAnd,
                Text2: S.of(context).StartBuilding,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  S
                      .of(context)
                      .ExploreOver25924AvailableJobRolesAndUpgradeYourOperatorNow,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ],
          );
        }),
      )
    ]),
    Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: 330.h,
            child: Image.asset(images[1])),
        Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: 30.w, top: 24.h, right: 30.w),
            child: Column(
              children: [
                RichTextExtractWidget(
                    Text1: S.of(context).HundredsOfJobsAreWaitingForYou,
                    Text2: S.of(context).JoinTogether,
                    Text3: ''),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                  child: Text(
                    S
                        .of(context)
                        .ImmediatelyJoinUsAndStartApplyingForTheJobYouAreInterestedIn,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          );
        })
      ],
    ),
    Column(
      children: [
        Image.asset(images[2]),
        Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: 30.w, top: 24.h, right: 30.h),
            child: Column(
              children: [
                RichTextExtractWidget(
                    Text1: S.of(context).GetTheBest,
                    Text2: S.of(context).ChoiceForTheJob,
                    Text3: S.of(context).YouHaveAlwaysDreamedOf),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 20.h),
                  child: Text(
                    S
                        .of(context)
                        .TheBetterTheSkillsYouHaveTheGreaterTheGoodJobOpportunitiesForYou,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          );
        })
      ],
    )
  ];
}

class BodySlider extends StatelessWidget {
  const BodySlider({
    Key? key,
    required this.contents, required this.controller,
  }) : super(key: key);

  final List<Widget> contents;
  final CarouselController controller;
  // final int _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0.h, bottom: 10),
      child: BlocBuilder<CarouselCubit, int>(
        builder: (context, currentIndex) {
          return Column(
            children: [
              SizedBox(height: 5.h,),
              const AppLogo(),
              CarouselSlider(
                carouselController: controller,
                items: contents
                    .map(
                      (item) => Container(
                        child: item,
                      ),
                    )
                    .toList(),
                options: CarouselOptions(

                  onPageChanged: (index, reason) {
                    context.read<CarouselCubit>().setPage(index);
                  },
                  height: 580.h,
                  autoPlay: false,
                  animateToClosest: false,
                  enableInfiniteScroll: false,
                  viewportFraction: 1.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3, // Number of slides
                  (index) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            currentIndex == index ? Colors.blue : Colors.grey,
                      ),
                    );
                  },
                ),
              ),
              MainButton(
                buttonText: Text(currentIndex==2?S.of(context).GetStarted :S.of(context).Next),
                onPressed: () {
                  if (currentIndex==2){
                    CacheHelper.setFirstTime('ok');
                    Get.to(()=>CreateAccount());}
                  controller.nextPage();
                  // context.read<CarouselCubit>().setPage((currentIndex + 1) % 3);
                },
              )
            ],
          );
        },
      ),
    );
  }
}
