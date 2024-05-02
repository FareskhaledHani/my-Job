import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/custom_main_button.dart';
import '../../generated/l10n.dart';

class AccountSuccess extends StatelessWidget {
  const AccountSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( foregroundColor: Colors.black,
        elevation: 0,
        backgroundColor: Colors.white,),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 20.w,horizontal: 20.w,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 140.h),
                Image.asset(
                    'images/create_acount/Success Account Ilustration.png'),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  S.of(context).YourAccountHasBeenSetUp,
                  style:  TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 29.sp,
                      color: const Color(0XFF111827)),
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric( horizontal: 50.w),
                  child: Text(
                  S.of(context).WeHaveCustomizedFeedsAccordingToYourPreferences,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0XFF6B7280)),
                    textAlign: TextAlign.center,
                  ),
                ),
                 Expanded(
                     child: Align(
                       alignment: Alignment.bottomCenter,
                         child: MainButton(buttonText:Text( S.of(context).GetStarted), onPressed:(){

                         })))
              ],
            ),
      ),
    );
  }
}
