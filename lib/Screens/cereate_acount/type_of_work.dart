import 'package:finalproject/Screens/cereate_acount/constant.dart';
import 'package:finalproject/Screens/cereate_acount/controller.dart';
import 'package:finalproject/Screens/cereate_acount/preferd_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TybeOfWork extends StatelessWidget {
   TybeOfWork({Key? key}) : super(key: key);
  final MyControoller MyControooller = Get.put(MyControoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12).flipped,

          child: Column(
            children: [
              Text('What type of work are you interested in?',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Color(0xFF111827))),
              Padding(
                padding: const EdgeInsets.only(top: 12).h,
                child: Text(
                  'Tell us what you’re interested in so we can\   customise the app for your needs.',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0XFF737379)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

              
                      InkWell(
                        onTap: MyControooller.changeColorContainer,
                        child: hope_work_box(Color1:MyControooller.containerColor,
                    // topp2: 36.h, topp1: 36.h,
                    // photo2: 'images/create_acount/Ilustrator Category.png',
                    textPhoto1: 'UI/UX Designer',
                    // textPhoto2: 'Ilustrator Designer',
                    photo1: 'images/create_acount/bezier.png',
                    // Color4:MyControooller.containerColorBorder ,
                    // Color2: MyControooller.containerColor,
                    Color3: MyControooller.containerColorBorder, topp1: 20.h,),
                      ),

                  hope_work_box(Color1:MyControooller.containerColor,
                    // topp2: 36.h, topp1: 36.h,
                    // photo2: 'images/create_acount/Ilustrator Category.png',
                    textPhoto1: 'Ilustrator Designer',
                    // textPhoto2: 'Ilustrator Designer',
                    photo1: 'images/create_acount/Ilustrator Category.png',
                    // Color4:MyControooller.containerColorBorder ,
                    // Color2: MyControooller.containerColor,
                    Color3: MyControooller.containerColorBorder, topp1: 20.h,),
                ],
              ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   hope_work_box(
                     // topp2: 20.h,
                     topp1: 20.h,
                     photo1: 'images/create_acount/Developer Category.png',
                     // photo2: 'images/create_acount/Management Category.png',
                     textPhoto1: 'Developer',
                     // textPhoto2: 'Management',
                     Color1: MyControooller.containerColor,
                     // Color2:MyControooller.containerColor,
                     // Color4:MyControooller.containerColorBorder,
                     Color3: MyControooller.containerColorBorder ,),
                   hope_work_box(
                     // topp2: 20.h,
                     topp1: 20.h,
                     photo1: 'images/create_acount/Management Category.png',
                     // photo2: 'images/create_acount/Management Category.png',
                     textPhoto1: 'Management',
                     // textPhoto2: 'Management',
                     Color1: MyControooller.containerColor,
                     // Color2:MyControooller.containerColor,
                     // Color4:MyControooller.containerColorBorder,
                     Color3: MyControooller.containerColorBorder ,),
                 ],
               ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  hope_work_box(
                    // topp2: 20.h,
                    topp1: 20.h,
                    // photo2: 'images/create_acount/Research and Analytics category.png',
                    textPhoto1: 'Information Technology',
                    // textPhoto2: 'Research and Analytics',
                    photo1: 'images/create_acount/Information technology category.png',
                    // Color2: MyControooller.containerColor,
                    Color1: MyControooller.containerColor,
                    // Color4: MyControooller.containerColorBorder,
                    Color3: MyControooller.containerColorBorder,),
                  hope_work_box(
                    // topp2: 20.h,
                      topp1: 20.h,
                      // photo2: 'images/create_acount/Research and Analytics category.png',
                      textPhoto1: 'Research and Analytics',
                      // textPhoto2: 'Research and Analytics',
                      photo1: 'images/create_acount/Research and Analytics category.png',
                      // Color2: MyControooller.containerColor,
                      Color1: MyControooller.containerColor,
                      // Color4: MyControooller.containerColorBorder,
                      Color3:  MyControooller.containerColorBorder),

                ],
              ),




              Padding(
                padding: const EdgeInsets.only(top: 60.0).h,
                child: ElevatedButton(
                  onPressed: () {
                    Get.put(PreferdLocation());
                  },
                  child: Text(' Next'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width,50.w),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Color(0xFF3366FF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

