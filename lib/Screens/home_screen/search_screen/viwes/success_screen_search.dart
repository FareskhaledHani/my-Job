import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screen_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../generated/l10n.dart';
import '../../../job_details/services/job_details_service.dart';
import '../../component/custom_mini_filter_button.dart';
import '../cubits/color_container_cubit/contract_and_internship_cubit.dart';
import '../cubits/color_container_cubit/full_and_part_cubit.dart';
import '../cubits/color_container_cubit/remote_and_onsite_cubit.dart';
import 'body_screen_search_filter.dart';
import 'dialogs/contarct_or_intern_dialog.dart';
import 'dialogs/full_or_part_dialog_screen.dart';
import 'dialogs/remote_or_onsite_dialog.dart';

class SuccessScreenSearch extends StatelessWidget {
  const SuccessScreenSearch({
    Key? key,
    required this.stateSearch, required this.jobDetailsServices,
  }) : super(key: key);
  final dynamic stateSearch;
  final JobDetailsServices jobDetailsServices ;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HybridContainer(),
        ),
        BlocProvider(
          create: (context) => AnyFullContainer(),
        ),
      ],
      child: BodyScreenSearch(stateSearch: stateSearch, jobDetailsServices: jobDetailsServices,),
    );
  }
}

class BodyScreenSearch extends StatelessWidget {
  const BodyScreenSearch({
    Key? key,
    required this.stateSearch, required this.jobDetailsServices,
  }) : super(key: key);
  final dynamic stateSearch;
  final JobDetailsServices jobDetailsServices ;

  @override
  Widget build(BuildContext context) {
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
                    BlocBuilder<FullContainer, SelectFull>(
                      builder: (context, state) {
                        return CustomMiniFilterButton(
                          colorText: state == SelectFull.selectedFull
                              ? Colors.white
                              : Colors.black,
                          titleButton: state == SelectFull.selectedFull
                              ? S.of(context).FullTime
                              : S.of(context).PartTime,
                          colorButton: state == SelectFull.selectedFull
                              ? const Color(0xff091A7A)
                              : Colors.white,
                          colorBorder: state == SelectFull.selectedFull
                              ? const Color(0xff091A7A)
                              : Colors.grey,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogScreenFullOrPart();
                                });
                          },
                          colorIcon: state == SelectFull.selectedFull
                              ? Colors.white
                              : Colors.black,
                        );
                      },
                    ),
                    BlocBuilder<RemoteContainer, SelectRemote>(
                      builder: (context, state) {
                        return CustomMiniFilterButton(
                          colorText: state == SelectRemote.selectedRemote
                              ? Colors.white
                              : Colors.black,
                          titleButton: state == SelectRemote.selectedRemote
                              ? S.of(context).Remote
                              : S.of(context).OnSite,
                          colorButton: state == SelectRemote.selectedRemote
                              ? const Color(0xff091A7A)
                              : Colors.white,
                          colorBorder: state == SelectRemote.selectedRemote
                              ? const Color(0xff091A7A)
                              : Colors.grey,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogScreenRemoteOrOnSite();
                                });
                          },
                          colorIcon: state == SelectRemote.selectedRemote
                              ? Colors.white
                              : Colors.black,
                        );
                      },
                    ),
                    BlocBuilder<ContractContainer, SelectContract>(
                      builder: (context, state) {
                        return CustomMiniFilterButton(
                          colorText: state == SelectContract.selectedContract
                              ? Colors.white
                              : Colors.black,
                          titleButton: state == SelectContract.selectedContract
                              ? S.of(context).Contract
                              : S.of(context).InternShip,
                          colorButton: state == SelectContract.selectedContract
                              ? const Color(0xff091A7A)
                              : Colors.white,
                          colorBorder: state == SelectContract.selectedContract
                              ? const Color(0xff091A7A)
                              : Colors.grey,
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const DialogScreenContractOrIntern();
                                });
                          },
                          colorIcon: state == SelectContract.selectedContract
                              ? Colors.white
                              : Colors.black,
                        );
                      },
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
                Text('Featuring 120+jobs'),
              ],
            ),
          ),
        ),
        BodyOfSearchScreen(stateSearch: stateSearch, jobDetailsServices: jobDetailsServices),
      ],
    );
  }
}


