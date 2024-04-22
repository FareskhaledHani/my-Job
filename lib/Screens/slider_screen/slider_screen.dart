import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/slider_screen/constan.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../generated/l10n.dart';
import 'component/custum_slider_up_logo.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();
  final MyControoller MyControooller = Get.put(MyControoller());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CarouselSlider(
            items: contents
                .map(
                  (item) => Container(
                    child: item,
                  ),
                )
                .toList(),
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              autoPlay: false,
              animateToClosest: false,
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
            ),
          ),

      ),
    );

  }
  final List<Widget> contents = [
    Column(children: [
      const AppLogo(),
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
          height: 330,
          child: Image.asset(
            images[0],
            width: double.infinity,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 24, top: 24, right: 30),
        child: Builder(
          builder: (context) {
            return Container(
              child: Column(
                children: [
                 RichTextExtractWidget(Text3:S.of(context).YourCareerFromNowOn, Text1: S.of(context).FindAJobAnd, Text2: S.of(context).StartBuilding,),

                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 20),
                    child: Text(
                      S.of(context).ExploreOver25924AvailableJobRolesAndUpgradeYourOperatorNow,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: nextButton(buttonText: S.of(context).Next, onpressed: () {  },),
                  )
                ],
              ),
            );
          }
        ),
      )
    ]),
    Column(
      children: [
        const AppLogo(),
        Container(
            width: double.infinity,
            height:  330,
            child: Image.asset(images[1])),
        Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 30),
              child: Container(
                child: Column(
                  children: [

                        RichTextExtractWidget(Text1:S.of(context).HundredsOfJobsAreWaitingForYou , Text2: S.of(context).JoinTogether, Text3: ''),


                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Text(
                            S.of(context).ImmediatelyJoinUsAndStartApplyingForTheJobYouAreInterestedIn,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),
                          ),

                    ),

                       Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: nextButton(buttonText: S.of(context).Next, onpressed: () {  },)

                    )
                  ],
                ),
              ),
            );
          }
        )
      ],
    ),
    Column(
      children: [
        const AppLogo(),
        Image.asset(images[2]),
        Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, right: 30),
              child: Container(
                child: Column(
                  children: [

                        RichTextExtractWidget(Text1:S.of(context).GetTheBest , Text2: S.of(context).ChoiceForTheJob, Text3: S.of(context).YouHaveAlwaysDreamedOf),


                       Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Text(
                            S.of(context).TheBetterTheSkillsYouHaveTheGreaterTheGoodJobOpportunitiesForYou,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),

                    Padding(
                      padding: const EdgeInsets.only(top: 50),

                      child:Builder(
                        builder: (context) {
                          return nextButton(buttonText: S.of(context).GetStarted, onpressed:(){Get.toNamed('/page1'); });
                        }
                      ) ,

                    )

                  ],
                ),
              ),
            );
          }
        )
      ],
    )
  ];
}






