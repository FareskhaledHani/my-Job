import 'package:finalproject/Screens/home_screen/search_screen/viwes/dialogs/full_or_part_dialog_screen.dart';
import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screen_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../../generated/l10n.dart';

import '../../component/custom_catogry.dart';

import '../../component/custom_mini_filter_button.dart';

import '../cubits/search_cubit/search_cubit.dart';

import '../models/search_model.dart';
import 'dialogs/contarct_or_intern_dialog.dart';
import 'dialogs/remote_or_onsite_dialog.dart';

class SearchScrean extends StatefulWidget {
  @override
  State<SearchScrean> createState() => _SearchScreanState();
}

bool outPutFullOrRemoteButton =
    (trueFullButton || trueOnSiteButton == true) ? true : false;

class _SearchScreanState extends State<SearchScrean> {
  final TextEditingController _searchController = TextEditingController();

  List<String> popularSearches = ["Flutter", "Dart", "Widgets", "Mobile App"];

  List<String> recentSearches = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => SearchCubit(),
  child: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0.sp),
              child: Column(
                children: [
                  Autocomplete<String>(
                    optionsBuilder: (TextEditingValue textEditingValue) {
                      return popularSearches
                          .where((search) =>
                              search.contains(textEditingValue.text))
                          .toList();
                    },
                    onSelected: (String value) {
                      // Handle when a suggestion is selected
                      _searchController.text = value;
                      recentSearches.add(value);
                    },
                    fieldViewBuilder: (BuildContext context,
                        TextEditingController textEditingController,
                        FocusNode focusNode,
                        VoidCallback onFieldSubmitted) {
                      return TextField(
                        controller: textEditingController,
                        focusNode: focusNode,
                        onSubmitted: (valueSearch) {
                          context.read<SearchCubit>().fetchJobs(textEditingController.text);
                          recentSearches.add(textEditingController.text);
                        },
                        decoration: InputDecoration(
                            icon: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              onPressed: () {
                                Get.back();
                              },
                            ),
                            hintText: S.of(context).TypeSomething,
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                      );
                    },
                  ),
                ],
              ),
            ),
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, stateSearch) {
                if (stateSearch is SearchInitial) {
                  return Column(
                    children: [
                      Container(
                        height: 36.h,
                        width: MediaQuery.of(context).size.width,
                        color: const Color(0xffE5E7EB),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Row(
                            children: const [
                              Text('Resent Searches'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Icon(
                                Icons.timer,
                                size: 25.sp,
                              ),
                              title: Text(
                                'Ui Ux Designer',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              minLeadingWidth: 0,
                              minVerticalPadding: 0,
                              dense: true,
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  size: 25.sp,
                                  color: Colors.red,
                                ),
                                onPressed: () {},
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        height: 36.h,
                        width: MediaQuery.of(context).size.width,
                        color: const Color(0xffE5E7EB),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Row(
                            children: [
                              Text('Popular Searches'),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Icon(
                                Icons.timer,
                                size: 25.sp,
                              ),
                              title: Text(
                                'Ui Ux Desighner',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              minLeadingWidth: 0,
                              minVerticalPadding: 0,
                              dense: true,
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.cancel_outlined,
                                  size: 25.sp,
                                  color: Colors.red,
                                ),
                                onPressed: () {},
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                } else if (stateSearch is GetSearchJobLoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (stateSearch is GetSearchJobSuccess) {
                  return Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 40.h,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return FullDialogContent();
                                      });
                                },
                                icon: const Icon(FontAwesomeIcons.sliders)),
                            SizedBox(
                              //height: 40.h,
                              width: 380.w,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CustomMiniFilterButton(
                                    colorText:
                                        (trueFullButton || truePartButton)
                                            ? Colors.white
                                            : Colors.black,
                                    titleButton: (truePartButton ||
                                            (truePartButton &&
                                                trueFullButton))
                                        ? 'part Time'
                                        : 'FullTime',
                                    colorButton:
                                        (trueFullButton || truePartButton)
                                            ? const Color(0xff091A7A)
                                            : Colors.white,
                                    colorBorder:
                                        (trueFullButton || truePartButton)
                                            ? const Color(0xff091A7A)
                                            : Colors.grey,
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return const DialogScreenFullOrPart();
                                          });
                                    },
                                    colorIcon:
                                        (trueFullButton || truePartButton)
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                  CustomMiniFilterButton(
                                    colorText:
                                        (trueRemoteButton || trueOnSiteButton)
                                            ? Colors.white
                                            : Colors.black,
                                    titleButton: (trueOnSiteButton ||
                                            (trueOnSiteButton &&
                                                trueRemoteButton))
                                        ? 'On Site'
                                        : 'Remote',
                                    colorButton:
                                        (trueRemoteButton || trueOnSiteButton)
                                            ? Color(0xff091A7A)
                                            : Colors.white,
                                    colorBorder:
                                        (trueRemoteButton || trueOnSiteButton)
                                            ? Color(0xff091A7A)
                                            : Colors.grey,
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return DialogScreenRemoteOrOnSite();
                                          });
                                    },
                                    colorIcon:
                                        (trueRemoteButton || trueOnSiteButton)
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                  CustomMiniFilterButton(
                                    colorText: (trueContractButton ||
                                            trueInternShipButton)
                                        ? Colors.white
                                        : Colors.black,
                                    titleButton: (trueInternShipButton ||
                                            (trueInternShipButton &&
                                                trueContractButton))
                                        ? 'Internship'
                                        : 'Contract',
                                    colorButton: (trueContractButton ||
                                            trueInternShipButton)
                                        ? Color(0xff091A7A)
                                        : Colors.white,
                                    colorBorder: (trueContractButton ||
                                            trueInternShipButton)
                                        ? Color(0xff091A7A)
                                        : Colors.grey,
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return DialogScreenContractOrIntern();
                                          });
                                    },
                                    colorIcon: (trueContractButton ||
                                            trueInternShipButton)
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  // CustomMiniFilterButton(colorText: (trueFullButton||truePartButton)?Colors.white:Colors.black, titleButton:(truePartButton||(truePartButton&&trueFullButton))?'part Time':'FullTime', colorButton: (trueFullButton==true||trueRemoteButton==true)?Color(0xff091A7A):Colors.white, colorBorder: (trueFullButton==true||trueRemoteButton==true)?Color(0xff091A7A):Colors.grey, onTap: () {  showDialog(context: context, builder: (context) {return DialogScreen();}); }, colorIcon:(trueFullButton==true||trueRemoteButton==true)?Colors.white:Colors.black,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.h),
                        height: 36.h,
                        width: MediaQuery.of(context).size.width,
                        color: const Color(0xffE5E7EB),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0.w),
                          child: Row(
                            children: const [
                              Text('Feturing 120+jobs'),
                            ],
                          ),
                        ),
                      ),

                           SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              itemCount: stateSearch.jobs.length,
                              itemBuilder: (context, index) {
                                Job job = stateSearch.jobs[index];
                                return CatogryCards(
                                  nameJob: job.name,
                                  mony: job.salary,
                                  image: job.image,
                                  jobTimeType: job.jobTimeType,
                                  nameComp: job.compName,
                                  location: job.location,
                                );
                              },
                            ),
                          ),

                    ],
                  );
                } else if (stateSearch is GetSearchJobFailureState) {
                  return Center(
                    child: Text(stateSearch.errorMessage),
                  );
                } else {
                  return const Center(
                    child: Text('Unknown State'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    ),
);
  }
}
