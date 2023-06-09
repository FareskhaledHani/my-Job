import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/slider_screen/constan.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  CarouselController buttonCarouselController = CarouselController();

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
}

final List<Widget> contents = [
  Column(children: [
    AppLogo(),
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
      child: Container(
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
      child: Container(
        child: Column(
          children: [
            RichTextExtractWidget(Text3: 'yourcareer from now on', Text1: 'Find a job, and ', Text2: 'start building',),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                'Explore over 25,924 available job roles and upgrade your operator now.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: nextButton(buttonText: 'Next', onpressed: () {  },),
            )
          ],
        ),
      ),
    )
  ]),
  Column(
    children: [
      AppLogo(),
      Container(
          width: double.infinity,
          height:  330,
          child: Image.asset(images[1])),
      Padding(
        padding: const EdgeInsets.only(left: 24, top: 24, right: 30),
        child: Container(
          child: Column(
            children: [
              RichTextExtractWidget(Text1:'Hundreds of jobs are waiting for you' , Text2: 'join together', Text3: ''),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'Immediately join us and start applying for the job you are interested in.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: nextButton(buttonText: 'next', onpressed: () {  },)
              )
            ],
          ),
        ),
      )
    ],
  ),
  Column(
    children: [
      AppLogo(),
      Image.asset(images[2]),
      Padding(
        padding: const EdgeInsets.only(left: 24, top: 24, right: 30),
        child: Container(
          child: Column(
            children: [
              RichTextExtractWidget(Text1:'Get the best' , Text2: 'choice for the job', Text3: "you've always dreamed of"),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'The better the skills you have, the greater the good job opportunities for you.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child:
                  ElevatedButton(onPressed: () {
                  },
                  child: Text('GetStarted'),

                  )
              )
            ],
          ),
        ),
      )
    ],
  )
];




