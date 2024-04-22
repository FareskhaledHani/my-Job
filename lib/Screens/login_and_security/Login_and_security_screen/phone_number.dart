import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../../components/custum_phone_field.dart';
import '../../../components/custum_title_text.dart';
import '../../../generated/l10n.dart';
import '../../slider_screen/extract_widget.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

bool onChange = false;

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title:S.of(context).EmailAddress,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustumTitle_400_16_black(title:S.of(context).MainEMailAddress),
            SizedBox(height: 10.h),
            CustumPhoneField(
              onchange: (phone) {},
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('jbhjjjjjjjjjjjjjjjjjjjjjjjjjjjjbjh/ty  \nbool onChange = false;jlkjjkkkkkkkkkkl',),
                FlutterSwitch(
                    width: 50,
                    height: 30,
                    toggleColor: Color(0xffD6E4FF),
                    toggleSize: 25,
                    borderRadius: 30,
                    padding: 3,
                    value: onChange,
                    onToggle: (val) {
                      setState(() {
                        onChange = val;
                      });
                    }),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: nextButton(
                  buttonText: S.of(context).Save,
                  onpressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
