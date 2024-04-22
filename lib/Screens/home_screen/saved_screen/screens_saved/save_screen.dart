import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../components/custum_title_in_cotainer.dart';
import '../../../../generated/l10n.dart';
import '../model/model.dart';
import 'dialog_saved_screen.dart';

class SaveScreen extends StatelessWidget {
   SaveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          leading:Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () { Get.back();},
              );
            },
          ) ,
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(S.of(context).Save, style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),),
          elevation: 0,
        ) ,
        body: Column(
          children: [
            TitleInContainer(title: '12 ${S.of(context).JobSaved}',),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10).w,
              child: Container(
                height: 558.5.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(itemCount:saved.length,itemBuilder: (BuildContext context, int index) {
                  return WorkJobSaved(saved[index].titleSave,saved[index].subTitleSave, saved[index].imageIconJob,saved[index].manyDay,index,context);
                },),
              ),
            )
          ],
        ),
      ),
    );
  }
  List<SaveScreenModel>saved=[
    SaveScreenModel(imageIconJob: Image.asset('images/home_screen/Twitter Logo.png'), subTitleSave:'Twitter • Jakarta, Indonesia ', titleSave: 'Senior UI Designer', manyDay: 'Posted 2 days ago'),
    SaveScreenModel(imageIconJob: Image.asset('images/home_screen/Twitter Logo.png'), subTitleSave:'Twitter • Jakarta, Indonesia ', titleSave: 'Senior UI Designer', manyDay: 'Posted 3 days ago'),
    SaveScreenModel(imageIconJob: Image.asset('images/home_screen/Twitter Logo.png'), subTitleSave:'Twitter • Jakarta, Indonesia ', titleSave: 'Senior UI Designer', manyDay: 'Posted 4 days ago'),
    SaveScreenModel(imageIconJob: Image.asset('images/home_screen/Twitter Logo.png'), subTitleSave:'Twitter • Jakarta, Indonesia ', titleSave: 'Senior UI Designer', manyDay: 'Posted 5 days ago'),
    SaveScreenModel(imageIconJob: Image.asset('images/home_screen/Twitter Logo.png'), subTitleSave:'Twitter • Jakarta, Indonesia ', titleSave: 'Senior UI Designer', manyDay: 'Posted 2 days ago'),
    SaveScreenModel(imageIconJob: Image.asset('images/home_screen/Twitter Logo.png'), subTitleSave:'Twitter • Jakarta, Indonesia ', titleSave: 'Senior UI Designer', manyDay: 'Posted 2 days ago'),
  ];
  Widget WorkJobSaved(String nameJob,String typeOfConnection,Image iconJobConnection,String days,int index,context){
    return Container(
      height: 100.h,
      child: Column(
        children: [
          ListTile(
            minVerticalPadding: 0,
            leading: iconJobConnection,
            subtitle: Text(typeOfConnection,style: TextStyle(fontSize:12.sp ,fontWeight: FontWeight.w400),),
            title:Text(nameJob,style: TextStyle(fontSize:19.sp ,fontWeight: FontWeight.w500),),
            trailing: IconButton(onPressed: () {showMiniScreenDialogSave(context);}, icon:const Icon(Ionicons.ellipsis_horizontal_outline,color:  Colors.black,)),

          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(days,style: TextStyle(color: const Color(0xff374151),fontWeight: FontWeight.w400,fontSize: 12.sp),),

                Container(child: Row(
                  children: [
                    const Icon(Icons.access_time,size: 10,color: Color(0xff2E8E18),),
                    SizedBox(width: 4.w,),
                    Text(S.of(context).BeAnEarlyApplicant,style: TextStyle(color: Color(0xff374151),fontWeight: FontWeight.w400,fontSize: 12.sp)),
                  ],
                )),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).w,
            child: const Divider(
              thickness: 2,
              height: 1,
              color: Color(0xffE5E7EB),
            ),
          )
        ],
      ),
    );
  }
}
