import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../../../components/custom_main_button.dart';
import '../../../../components/custom_phone_number.dart';
import '../../../../components/custum_phone_field.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../generated/l10n.dart';
import '../../../home_screen/profile_screen/service/get_profile_service.dart';
import '../../../slider_screen/extract_widget.dart';
import 'cubit_phone.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({Key? key, required this.number, required this.globalKey, required this.getProfileService}) : super(key: key);
  final String number;
  final  GlobalKey<FormState>globalKey;
  final GetProfileService getProfileService;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).EmailAddress,
        ),
        elevation: 0,
      ),
      body: BlocProvider(
        create: (context) => SwitchCubit(),
        child: BodyPhoneNumber(number: number, globalKey: globalKey, getProfileService: getProfileService,),
      ),
    );
  }
}

class BodyPhoneNumber extends StatelessWidget {
  const BodyPhoneNumber({
    Key? key, required this.number, required this.globalKey, required this.getProfileService,
  }) : super(key: key);
  final String number;
 final  GlobalKey<FormState>globalKey;
  final GetProfileService getProfileService;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustumTitle_400_16_black(title: S.of(context).MainEMailAddress),
            SizedBox(height: 10.h),
            CustomPhoneNumberField(validator: (String ) {  }, onChange: (String ) {  }, initialValue: number,),
           const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).UseThePhoneNumberToResetYourPassword,
                  style: const TextStyle(color: Colors.grey),
                ),
                BlocBuilder<SwitchCubit, bool>(
                  builder: (context, state) {
                    return FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: const Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: state,
                        onToggle: (val) {
                          context.read<SwitchCubit>().toggleSwitch(val);
                        });
                  },
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MainButton(
                  buttonText: Text(S.of(context).Save),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
