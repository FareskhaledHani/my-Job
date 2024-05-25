// import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screen_filter.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import '../../../../generated/l10n.dart';
// import '../../component/custom_catogry.dart';
// import '../../component/custom_mini_filter_button.dart';
// import '../cubits/filter_cubit/filter_cubit.dart';
// import '../models/filter_model.dart';
// import 'dialogs/full_or_part_dialog_screen.dart';
// import 'dialogs/remote_or_onsite_dialog.dart';
//
//
// class ScreenResulFilter extends StatelessWidget {
//   const ScreenResulFilter ({Key? key, required this.valueTitle, required this.valueLocation, required this.valueSalary}) : super(key: key);
// final String valueTitle;
// final String valueLocation;
// final String valueSalary;
//   @override
//   Widget build(BuildContext context) {
//     return ResultFilterScreen(valueTitle: valueTitle, valueSalary: valueLocation, valueLocation: valueSalary,);
//   }
// }
//
//
//
// class ResultFilterScreen extends StatefulWidget {
//   const ResultFilterScreen(
//       {Key? key,
//       required this.valueTitle,
//       required this.valueLocation,
//       required this.valueSalary})
//       : super(key: key);
//   final String valueTitle;
//   final String valueLocation;
//   final String valueSalary;
//
//   @override
//   State<ResultFilterScreen> createState() => _ResultFilterScreenState();
// }
//
// class _ResultFilterScreenState extends State<ResultFilterScreen> {
//
//   @override
//   void initState() {
//     Future.delayed(const Duration(seconds: 1), () async {
//       context.read<FilterCubit>().fetchFilterJobs(widget.valueTitle);
//       // sugesstionJobModel=await ApiServices().getSuggestionJob();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(20.0.sp),
//         child: Column(
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                   icon: IconButton(
//                     icon: const Icon(Icons.arrow_back),
//                     onPressed: () {
//                       Get.back();
//                     },
//                   ),
//                   hintText: S.of(context).TypeSomething,
//                   prefixIcon: const Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(40),
//                   )),
//             ),
//             SizedBox(
//               width: double.infinity,
//               height: 40.h,
//               child: Row(
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         showDialog(
//                             context: context,
//                             builder: (context) {
//                               return FullDialogContent();
//                             });
//                       },
//                       icon: const Icon(FontAwesomeIcons.sliders)),
//                   SizedBox(
//                     //height: 40.h,
//                     width: 380.w,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: [
//                         CustomMiniFilterButton(
//                           colorText: (trueFullButton || truePartButton)
//                               ? Colors.white
//                               : Colors.black,
//                           titleButton: (truePartButton ||
//                                   (truePartButton && trueFullButton))
//                               ? 'part Time'
//                               : 'FullTime',
//                           colorButton: (trueFullButton || truePartButton)
//                               ? const Color(0xff091A7A)
//                               : Colors.white,
//                           colorBorder: (trueFullButton || truePartButton)
//                               ? const Color(0xff091A7A)
//                               : Colors.grey,
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return const DialogScreenFullOrPart();
//                                 });
//                           },
//                           colorIcon: (trueFullButton || truePartButton)
//                               ? Colors.white
//                               : Colors.black,
//                         ),
//                         CustomMiniFilterButton(
//                           colorText: (trueRemoteButton || trueOnSiteButton)
//                               ? Colors.white
//                               : Colors.black,
//                           titleButton: (trueOnSiteButton ||
//                                   (trueOnSiteButton && trueRemoteButton))
//                               ? 'On Site'
//                               : 'Remote',
//                           colorButton: (trueRemoteButton || trueOnSiteButton)
//                               ? Color(0xff091A7A)
//                               : Colors.white,
//                           colorBorder: (trueRemoteButton || trueOnSiteButton)
//                               ? Color(0xff091A7A)
//                               : Colors.grey,
//                           onTap: () {
//                             showDialog(
//                                 context: context,
//                                 builder: (context) {
//                                   return DialogScreenRemoteOrOnSite();
//                                 });
//                           },
//                           colorIcon: (trueRemoteButton || trueOnSiteButton)
//                               ? Colors.white
//                               : Colors.black,
//                         ),
//                         CustomMiniFilterButton(
//                           colorText:
//                               (trueContractButton || trueInternShipButton)
//                                   ? Colors.white
//                                   : Colors.black,
//                           titleButton: (trueInternShipButton ||
//                                   (trueInternShipButton && trueContractButton))
//                               ? 'Internship'
//                               : 'Contract',
//                           colorButton:
//                               (trueContractButton || trueInternShipButton)
//                                   ? Color(0xff091A7A)
//                                   : Colors.white,
//                           colorBorder:
//                               (trueContractButton || trueInternShipButton)
//                                   ? Color(0xff091A7A)
//                                   : Colors.grey,
//                           onTap: () {},
//                           colorIcon:
//                               (trueContractButton || trueInternShipButton)
//                                   ? Colors.white
//                                   : Colors.black,
//                         ),
//                         // CustomMiniFilterButton(colorText: (trueFullButton||truePartButton)?Colors.white:Colors.black, titleButton:(truePartButton||(truePartButton&&trueFullButton))?'part Time':'FullTime', colorButton: (trueFullButton==true||trueRemoteButton==true)?Color(0xff091A7A):Colors.white, colorBorder: (trueFullButton==true||trueRemoteButton==true)?Color(0xff091A7A):Colors.grey, onTap: () {  showDialog(context: context, builder: (context) {return DialogScreen();}); }, colorIcon:(trueFullButton==true||trueRemoteButton==true)?Colors.white:Colors.black,),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 20.h),
//               height: 36.h,
//               width: MediaQuery.of(context).size.width,
//               color: const Color(0xffE5E7EB),
//               child: Padding(
//                 padding: EdgeInsets.only(left: 20.0.w),
//                 child: Row(
//                   children: [
//                     Text('Feturing 120+jobs'),
//                   ],
//                 ),
//               ),
//             ),
//             BlocBuilder<FilterCubit, FilterState>(
//                 builder: (context, stateFilter) {
//               if (stateFilter is FilterInitial) {
//                 return SizedBox(
//                   height: MediaQuery.of(context).size.height / 2,
//                   width: MediaQuery.of(context).size.width,
//                 );
//               } else if (stateFilter is GetFilterJobLoadingState) {
//                 return const Center(
//                   child: CircularProgressIndicator(),
//                 );
//               } else if (stateFilter is GetFilterJobSuccess) {
//                 return SizedBox(
//                   height: MediaQuery.of(context).size.height / 2,
//                   width: MediaQuery.of(context).size.width,
//                   child: ListView.builder(
//                     itemCount: stateFilter.jobsFilter.length,
//                     itemBuilder: (context, index) {
//                       JobFilter jobsFilter = stateFilter.jobsFilter[index];
//                       return CatogryCards(
//                         nameJob: jobsFilter.name,
//                         mony: jobsFilter.salary,
//                         image: jobsFilter.image,
//                         jobTimeType: jobsFilter.jobTimeType,
//                         nameComp: jobsFilter.compName,
//                         location: jobsFilter.location,
//                       );
//                     },
//                   ),
//                 );
//               } else if (stateFilter is GetFilterJobFailureState) {
//                 return Center(
//                   child: Text(stateFilter.errorMessage),
//                 );
//               } else {
//                 return const Center(
//                   child: Text('Unknown State'),
//                 );
//               }
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }
