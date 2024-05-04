import 'package:email_validator/email_validator.dart';
import 'package:finalproject/Screens/home_screen/home_screen/home_screen.dart';
import 'package:finalproject/Screens/home_screen/profile_screen/profile_screen/profile_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:finalproject/core/cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../../components/custom_empty_field.dart';
import '../../../components/custom_main_button.dart';
import '../../../components/custom_phone_number.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../../bottom_nav_bar/views/bottom_nav_bar_view.dart';
import '../../home_screen/profile_screen/service/get_profile_service.dart';
import '../services/edit_name_service.dart';
import '../services/put_edit_profile_service.dart';


class EditProfile extends StatelessWidget {
    EditProfile({Key? key,
     required this.initialValueName,
     required this.initialValueAddress,
     required this.formKey,
      required this.initialValueBio,
      required this.initialValueNumber,
      required this.reloadCallback, }) : super(key: key);
  final String initialValueName;
  final String ?initialValueAddress;
  final String ?initialValueBio;
  final String ?initialValueNumber;
  final  GlobalKey<FormState> formKey;

    final Function() reloadCallback;
   // final GetProfileService getProfileService;
   String valueBio='';
   String valueName='';
   String valueAddress='';
   String valueNumberPhone='';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
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
          title:  Text(
            S.of(context).EditProfile,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
          ),
          elevation: 0,
        ),
        backgroundColor: KPrimaryBackGroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30).w,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 40,
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: CircleAvatar(
                       radius: 40,
                       child: Image.asset('images/home_screen/profile/Profile.png'),
                      ),
                    ),
                    Positioned(
                        child: IconButton(onPressed: () {  }, icon: const Icon(Ionicons.camera_outline,color: Colors.white,size: 30,),))
                  ],
                ),
              ),
              Center(child: TextButton(onPressed: (){}, child: Text(S.of(context).ChangePhoto,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),))),
               SizedBox(height: 10.h,),
               Expanded(
                 child: ListView(children: [
                   ////Name Text Field
                   Text(S.of(context).Name,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: const Color(0xff9CA3AF))),
                   SizedBox(height: 5.h),
                   CustomFieldEmpty(initialValue:initialValueName, hintText: '', onChange: (value ) { valueName=value; },
                     validator: (value ){  if (value!.isEmpty) {return 'Name Is Empty';} else if (value.length < 3 ) {return 'Name Is Least Please Check Your Name';}},),
                   SizedBox(height: 10.h),
                   ////Bio Text Field
                   Text(S.of(context).Bio,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: const Color(0xff9CA3AF)),),
                   SizedBox(height: 5.h),
                   CustomFieldEmpty(validator: (value ) {  if (value!.isEmpty) {return 'Bio Is Empty';} else if (value.length < 4 ) {return 'Bio Is Least Please Check Your Name';}},
                     initialValue: initialValueBio??valueBio,
                      hintText: '',
                     onChange: (value ) {
                       valueBio=value;
                     },),
                   SizedBox(height: 10.h),
                   ////Address Text Field
                   Text(S.of(context).Address,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: const Color(0xff9CA3AF))),
                   SizedBox(height: 10.h),
                   CustomFieldEmpty( initialValue: initialValueAddress??valueAddress, validator: (value ) { EmailValidator.validate(value!)?null:'please enter a valid email'; }, hintText: '',
                     onChange: (value ) {
                     valueAddress=value;
                     },),
                   SizedBox(height: 10.h),
                   ////Phone Text Field
                   Text(S.of(context).NoHandphone,style: TextStyle(fontWeight:FontWeight.w500 ,fontSize: 18.sp,color: const Color(0xff9CA3AF))),
                   SizedBox(height: 5.h),

                   CustomPhoneNumberField(
                     validator: (value ) {
                       if (value!.isEmpty) {
                         return 'number Is Empty';
                       } else if (value.length < 11 ) {
                         return 'number Is Least Please Check Password';
                       }
                       return null;
                     },
                     onChange: (value ){
                        valueNumberPhone=value ;
                     },

                     initialValue: initialValueNumber??valueNumberPhone,
                   ),
                   Padding(
                     padding:  EdgeInsets.only(top: 100.0.h),
                     child: Center(child: MainButton(buttonText: Text(S.of(context).Save), onPressed: (){
                       if (formKey.currentState!.validate()){
                         CacheHelper.setCompletePortfolio(true);
                       EditProfileService().updateUserProfile(bio: valueBio.isEmpty?initialValueBio??valueBio:valueBio, address: valueAddress.isEmpty?initialValueAddress??valueAddress:valueAddress, mobile: valueNumberPhone.isEmpty?initialValueNumber??valueNumberPhone:valueNumberPhone);
                       ServiceUpdateName().updateName(valueName);
                         // reloadCallback();
                         Navigator.pop(context);

                       }
                     })),
                   )
                 ],),
               ),
            ],
          ),
        ),
      ),
    );
  }
}



// IntlPhoneField(
//   controller: numberController,
//    validator:(value){if(value!.number.isEmpty){return 'Name Is Empty';}else if (value.number.length < 10 ) {return 'Phone Number Is Least Please Check Your Phone Number';} },
//   initialCountryCode: 'EG',
//   decoration: InputDecoration(
//     labelText: S.of(context).PhoneNumber,
//     border: const OutlineInputBorder(
//       borderSide: BorderSide(),
//       borderRadius: BorderRadius.all(
//         Radius.circular(10),),
//     ),
//   ),
// ),
