// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:finalproject/Screens/home_screen/home_screen/models/suggestion_job.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//
//
//
//
// class CustomCarousalSlider extends StatelessWidget {
//
// //final SugesstionJobModel sugModel;
//
//  CustomCarousalSlider({
//     Key? key,// required this.sugModel,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
//       items: carusal2
//           .map(
//             (item) => Container(
//           height: 330.h,
//           child: item,
//         ),
//       )
//           .toList(),
//      // carouselController: buttonCarouselController,
//       options: CarouselOptions(
//         height: 201.5.h,
//         autoPlay: false,
//         animateToClosest: false,
//         enableInfiniteScroll: false,
//         viewportFraction: 1.0,
//       ),
//     );
//
//   }
//    final List<Widget> carusal2 = [
//
//      Column(
//      children: [
//      Container(
//          decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(20),
//              color: Color(0xFF091A7A)
//          ),
//          height:199.5.h,
//          width: 370.w,
//
//          child: Padding(
//            padding: const EdgeInsets.all(20.0),
//            child: Column(children: [
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: [
//                  Row(
//                    mainAxisSize: MainAxisSize.min,
//                    children: [
//                      Image.asset('dsds'),
//                      SizedBox(width: 15.w),
//                      Column(
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: [
//                          Text('Senior UI Designer',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:18 ),),
//                          SizedBox(height: 5.h),
//                          Text('Senior UI Designer',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:10 ),),
//                        ],
//                      ),
//                    ],
//                  ),
//                  const Icon(FontAwesomeIcons.bookmark)
//                ],),
//              SizedBox(height: 20.h,),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                children: [
//                  Container(
//                    child: const Center(child: Text('fulltime')),
//                    width:100.w,
//                    height:35.h,
//                    decoration: BoxDecoration(
//                        color: Color(0XFFFFFFF),borderRadius: BorderRadius.circular(20)
//                    ),),
//                  SizedBox(width: 5.w),
//                  Container(
//                    child: Center(child: Text('Remote')),
//                    width:100.w,
//                    height:35.h,
//                    decoration: BoxDecoration(
//                        color: Color(0XFFFFFFF),borderRadius: BorderRadius.circular(20)
//                    ),),SizedBox(width: 5.w), Container(
//                    child: Center(child: Text('Senior')),
//                    width:100.w,
//                    height:35.h,
//                    decoration: BoxDecoration(
//                        color: Color(0XFFFFFFF),borderRadius: BorderRadius.circular(20)
//                    ),),
//                ],),
//              SizedBox(height: 20.h,),
//              Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: [
//                  Text("12K-15K/Month",style: TextStyle(fontSize:12 ,fontWeight: FontWeight.w500,color: Colors.white),),ElevatedButton(onPressed: (){}, child: Text('ApplyNow'),style: ButtonStyle(
//                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                          RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(18.0),
//
//                          )
//                      )
//                  ),)
//                ],),
//            ],),
//          )
//      ),
//    ])];
//
// }
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finalproject/Screens/home_screen/home_screen/models/suggestion_job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home_screen/home_screen.dart';
import '../home_screen/services.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    Key? key,
    required this.apiServices,
  }) : super(key: key);

  final ApiServices apiServices;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SugesstionJobModel>(
      future: apiServices.getSuggestionJob(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final suggestionJob = snapshot.data!;
          return CarouselSlider.builder(
            itemCount: 1,
            options: CarouselOptions(
              height: 201.5.h,
              autoPlay: false,
              animateToClosest: false,
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
            ),
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF091A7A)),
              height: 199.5.h,
              width: 370.w,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(
                              width:40.w,
                                height:40.h,
                                suggestionJob.image),
                            SizedBox(width: 15.w),
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  suggestionJob.name,
                                  style:const TextStyle(
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
                        const Icon(FontAwesomeIcons.bookmark,color: Colors.white,)
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
                                  suggestionJob.jobTimeType,style: const TextStyle(color: Colors.white),)),
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
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(text:"\$${suggestionJob.salary}",
                              style:const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),),
                            const TextSpan(text:"/month",
                              style:TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),)
                          ]
                        )),

                        ElevatedButton(
                          onPressed: () {},
                          child: Text('ApplyNow'),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                        )
                      ],
                    ),
                  ],
                ),
              ));
            },
          );
          // return
          //   Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text('Name: ${suggestionJob.name}'),
          //     Text('Company: ${suggestionJob.compName}'),
          //     Text('Salary: ${suggestionJob.salary}'),
          //     // Display other fields as needed
          //   ],
          // );
        }
      },
    );
    // return CarouselSlider.builder(
    //   itemCount:2 ,
    //   options: CarouselOptions(
    //     height: 201.5.h,
    //     autoPlay: false,
    //     animateToClosest: false,
    //     enableInfiniteScroll: false,
    //     viewportFraction: 1.0,
    //   ),
    //   itemBuilder: (BuildContext context, int index, int realIndex) {
    //
    //     return
    //
    //       Container(
    //
    //         child: Column(children: [
    //           Container(
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(20),
    //                   color: Color(0xFF091A7A)),
    //               height: 199.5.h,
    //               width: 370.w,
    //               child: Padding(
    //                 padding:  EdgeInsets.all(20.0),
    //                 child: Column(
    //                   children: [
    //                     Row(
    //                       mainAxisAlignment:
    //                       MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Row(
    //                           mainAxisSize: MainAxisSize.min,
    //                           children: [
    //                             Image.asset(sugesstionJobModel!.image),
    //                             SizedBox(width: 15.w),
    //                             Column(
    //                               crossAxisAlignment:
    //                               CrossAxisAlignment.start,
    //                               children: [
    //                                 Text(
    //                                   sugesstionJobModel!.name,
    //                                   style: TextStyle(
    //                                       fontWeight: FontWeight.w500,
    //                                       fontSize: 18),
    //                                 ),
    //                                 SizedBox(height: 5.h),
    //                                 Text(
    //                                 sugesstionJobModel?.compName??'...',
    //                                   style: TextStyle(
    //                                       fontWeight: FontWeight.w500,
    //                                       fontSize: 10),
    //                                 ),
    //                               ],
    //                             ),
    //                           ],
    //                         ),
    //                         const Icon(FontAwesomeIcons.bookmark)
    //                       ],
    //                     ),
    //                     SizedBox(
    //                       height: 20.h,
    //                     ),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.start,
    //                       children: [
    //                         Container(
    //                           child:  Center(
    //                               child: Text(sugesstionJobModel?.jobTimeType??'.....')),
    //                           width: 100.w,
    //                           height: 35.h,
    //                           decoration: BoxDecoration(
    //                               color: Color(0XFFFFFFF),
    //                               borderRadius:
    //                               BorderRadius.circular(20)),
    //                         ),
    //                         SizedBox(width: 5.w),
    //                         // Container(
    //                         //   child: Center(child: Text('Remote')),
    //                         //   width: 100.w,
    //                         //   height: 35.h,
    //                         //   decoration: BoxDecoration(
    //                         //       color: Color(0XFFFFFFF),
    //                         //       borderRadius:
    //                         //       BorderRadius.circular(20)),
    //                         // ),
    //                         // SizedBox(width: 5.w),
    //                         // Container(
    //                         //   child: Center(child: Text('Senior')),
    //                         //   width: 100.w,
    //                         //   height: 35.h,
    //                         //   decoration: BoxDecoration(
    //                         //       color: Color(0XFFFFFFF),
    //                         //       borderRadius:
    //                         //       BorderRadius.circular(20)),
    //                         // ),
    //                       ],
    //                     ),
    //                     SizedBox(
    //                       height: 20.h,
    //                     ),
    //                     Row(
    //                       mainAxisAlignment:
    //                       MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         Text(
    //                           "${sugesstionJobModel?.salary??'.....'}/Month",
    //                           style: TextStyle(
    //                               fontSize: 12,
    //                               fontWeight: FontWeight.w500,
    //                               color: Colors.white),
    //                         ),
    //                         ElevatedButton(
    //                           onPressed: () {},
    //                           child: Text('ApplyNow'),
    //                           style: ButtonStyle(
    //                               shape: MaterialStateProperty.all<
    //                                   RoundedRectangleBorder>(
    //                                   RoundedRectangleBorder(
    //                                     borderRadius:
    //                                     BorderRadius.circular(18.0),
    //                                   ))),
    //                         )
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               )),
    //         ]));
    //   },
    // );
  }
}
