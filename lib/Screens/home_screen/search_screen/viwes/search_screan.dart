import 'package:finalproject/Screens/home_screen/search_screen/viwes/success_screen_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../generated/l10n.dart';
import '../../../job_details/services/job_details_service.dart';
import '../cubits/search_cubit/search_cubit.dart';


class SearchScreen extends StatelessWidget {


  final TextEditingController searchController ;
  final JobDetailsServices jobDetailsServices ;
  List<String> popularSearches = ["Flutter", "Dart", "Widgets", "Mobile App"];

  List<String> recentSearches = [];

  SearchScreen({Key? key, required this.jobDetailsServices, required this.searchController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchCubit(),
        ),

      ],
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
                        searchController.text = value;
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
                            context
                                .read<SearchCubit>()
                                .fetchJobs(textEditingController.text);
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
                                Text(S.of(context).PopularSearches),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100.h,
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
                    return  SuccessScreenSearch(stateSearch: stateSearch, jobDetailsServices: jobDetailsServices,);
                  } else if (stateSearch is GetSearchJobFailureState) {
                    return  Column(
                      children: [
                        const Icon(FontAwesomeIcons.triangleExclamation,color: Colors.red),
                        SizedBox(height: 20.h),
                        Text(S.of(context).PleaseCheckYourNetworkAndTryAgain)
                      ],
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

