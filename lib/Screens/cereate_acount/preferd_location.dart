
import 'package:finalproject/Screens/cereate_acount/accoun_success.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PreferdLocation extends StatelessWidget {
  final List<String> countryNames = [
    'UnitedStates',
    'Malaysia',
    'Singapore',
    'Indonesia',
    'Philiphines',
    'Polandia',
    'India',
    'Vietnam',
    'China',
    'Chanada',
    'Saudia Arabia',
    'Argentina',
    'Brazil',
    // Add more country names here
  ];

  final List<String> countryFlags = [
    'images/create_acount/flag1.png',
    'images/create_acount/flag2.png',
    'images/create_acount/flag3.png',
    'images/create_acount/flag4.png',
    'images/create_acount/flag5.png',
    'images/create_acount/flag6.png',
    'images/create_acount/flag7.png',
    'images/create_acount/flag8.png',
    'images/create_acount/flag9.png',
    'images/create_acount/flag10.png',
    'images/create_acount/flag11.png',
    'images/create_acount/flag12.png',
    'images/create_acount/flag13.png',
    // Add more flag image paths here
  ];


  PreferdLocation({Key? key}) : super(key: key);
  final MyControoller MyControoooller = Get.put(MyControoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets
                .only(top: 20, right: 24, left: 24)
                .h
                .w
                .w,
            child: Container(
              child: Column(
                children: [
                  Text('Where are you prefefred Location?', style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.w500
                  ),),

                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 32).h.h,
                    child: Text(
                      'Let us know, where is the work location you want at this time, so we can adjust it.',
                      style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xFF737379)),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() =>
                          ElevatedButton(onPressed: () {
                            MyControoooller.changeColorRemote();
                          },
                            child: Text('Work Form Office'),
                            style: ElevatedButton.styleFrom(
                              //fixedSize: Size(MediaQuery.of(context).size.width, 50.w),

                                fixedSize: Size(160.5, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                //primary: ,
                                primary: MyControoooller.colorOffiice.value

                            ),),),

                      Obx(() =>
                          ElevatedButton(onPressed: () {
                            MyControoooller.changeColorOffice();
                          }, child: Text('Remote Work'), style: ElevatedButton
                              .styleFrom(
                            //fixedSize: Size(MediaQuery.of(context).size.width, 50.w),

                              fixedSize: Size(160.5, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: MyControoooller.colorRemote.value
                          ),)
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 15).h.h,
                    child: Text(
                      'Select the country you want for your job                        ',
                      style: TextStyle(fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF737379)),),
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height, // Set a specific height
                    child: ListView.builder(
                      itemCount: countryNames.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return _buildCountryContainer(index);
                      },
                    ),),
                  nextButton(buttonText: 'Next', onpressed: (){
                  Get.to(AcountSuccess());
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCountryContainer(int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.blueGrey
          ),
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(countryFlags[index]), // Display the flag image
              Text(
                countryNames[index],
                style: TextStyle(fontSize:18.0, fontWeight: FontWeight.bold),
              ),
            ],
          )
      ),
    );
  }
}
