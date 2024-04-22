import 'package:finalproject/Screens/home_screen/applied_screen/screen/passive_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import 'active_screen.dart';

class AppliedJop extends StatelessWidget {
  const AppliedJop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: KPrimaryBackGroundColor,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: CustumTitle_500_20_black(
            title: S.of(context).AppliedJob,
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F4F5),
                  borderRadius: BorderRadius.circular(25)),
              child: TabBar(
                  onTap: (value) {
                    // var getDetailsScreen =
                    // BlocProvider.of<JobDetailsCubit>(context);
                    // getDetailsScreen.getJobDetails(counter: value);
                  },
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                      color: const Color(0xff091A7A),
                      borderRadius: BorderRadius.circular(25)),
                  tabs:  [
                    Tab(
                      text: S.of(context).Active,
                    ),
                    Tab(
                      text: S.of(context).Rejected,
                    ),

                  ]),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ActiveScreen(),
                  Rejected(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
