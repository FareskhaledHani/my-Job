import 'package:finalproject/Screens/search_screen/controller_seerch_filter.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> showMiniScreenDialog(BuildContext context) async {
   final ControllerSearchFilter controllerFilter =
   Get.put(ControllerSearchFilter());
  // final RxBool isChecked = false.obs;

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        insetPadding: EdgeInsets.only(top: 500.h),
        // Remove padding around the dialog
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [

              Text('On-Site/Remote',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            SizedBox(height: 30.h,),
            //
            // GetBuilder<ControllerSearchFilter>(
            //   init:ControllerSearchFilter(),
            //   builder: (controllrer)=>
            // Row(
            //   children: <Widget>[
            //     SizedBox(width: 10,),
            //     Text('Checkbox without Header and Subtitle: ',style: TextStyle(fontSize: 17.0), ),
            //     Checkbox(
            //       checkColor: Colors.greenAccent,
            //       activeColor: Colors.red,
            //       value: controllrer.change,
            //       onChanged: (value) {
            //         setState(() {
            //           controllrer.change= value!;
            //         });
            //       },
            //     ),],),),



                Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0).w
              ,
              child: Row(children: [
              // GetBuilder<ControllerSearchFilter>(
              // init: ControllerSearchFilter(),
              // builder: (controller)
              GetBuilder<ControllerSearchFilter>(
                init: ControllerSearchFilter(),
                builder: (controller) =>

                  ElevatedButton(onPressed: () {
                    print("PRESSED\n");
                    controller.changeColorContainer();
                  },
                      child: Text('jdj'),
                      style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                           side: BorderSide(
                             width: 1.0,
                             color: controller.change ?controller.containerColorBorder.value :   const Color(0xFF3366FF)

                           ),
                        borderRadius:
                        BorderRadius.circular(
                        20,
                      ),),
              minimumSize: Size(80,34),
              primary: controllerFilter.containerColor.value,
              onPrimary: controllerFilter.containerColorBorder.value,
              // fo))
              //  Container(
              //   width: 87.w,
              //   height: 34.h,
              //   decoration: BoxDecoration(
              //       border: Border.all(width: 1,color:controller.containerColorBorder),
              //       color: controller.containerColor,
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Center(child: Text('remote')),
              // ),),
                      ),),),


              // InkWell(
              //   onTap: ControllerFilter.changeColorContainer,
              //   child: Obx(()=> Container(
              //     width: 87.w,
              //     height: 34.h,
              //     decoration: BoxDecoration(
              //         border: Border.all(width: 1,color:ControllerFilter.containerColorBorder.value,),
              //         color:  ControllerFilter.containerColor.value,
              //         borderRadius: BorderRadius.circular(20)),
              //     child: Center(child: Text('onsite')),
              //   ),),
              // ),
              // SizedBox(width: 10.w,),
              // InkWell(
              //   onTap: ControllerFilter.changeColorContainer,
              //   child: Obx(()=> Container(
              //     width: 87.w,
              //     height: 34.h,
              //     decoration: BoxDecoration(
              //         border: Border.all(width: 1,color:ControllerFilter.containerColorBorder.value,),
              //         color:  ControllerFilter.containerColor.value,
              //         borderRadius: BorderRadius.circular(20)),
              //     child: Center(child: Text('Hybird')),
              //   ),),
              // ),
              // SizedBox(width: 10.w,),
              // InkWell(
              //   onTap: ControllerFilter.changeColorContainer,
              //   child: Obx(()=> Container(
              //     width: 67.w,
              //     height: 34.h,
              //     decoration: BoxDecoration(
              //         border: Border.all(width: 1,color:ControllerFilter.containerColorBorder.value,),
              //         color:  ControllerFilter.containerColor.value,
              //         borderRadius: BorderRadius.circular(20)),
              //     child: Center(child: Text('Any')),
              //   ),),
              // ),
              ],),
          ),
          SizedBox(height: 30.h,),
          Center(child:
          nextButton(buttonText: 'show result', onpressed: () {}))
          ],
        ),
      ),)
      ,
      );
    },
  );
}
