import 'package:country_flags/country_flags.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/custum_title_text.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';

class LanguageScreen extends StatefulWidget {
   LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String _value ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title:  Text(
          S.of(context).Language,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0).r,
        child: Column(
          children: [

            ListTile(

              horizontalTitleGap: 5,
              leading: Image.asset('images/flags/England.png'),
              title: Text('English'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              minLeadingWidth: 10,
              leading: Image.asset('images/flags/Indonesia.png'),
              title: Text('Indonisia'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              minLeadingWidth: 10,
              leading: Image.asset('images/flags/Saudi Arabia.png'),
              title: Text('Arabic'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              minLeadingWidth: 10,
              horizontalTitleGap: 1,
              leading: Image.asset('images/flags/England.png'),
              title: Text('English'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              minLeadingWidth: 10,
              leading: Image.asset('images/flags/England.png'),
              title: Text('English'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              minLeadingWidth: 10,
              leading: Image.asset('images/flags/England.png'),
              title: Text('English'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              minLeadingWidth: 10,
              leading: Image.asset('images/flags/England.png'),
              title: Text('English'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
            ListTile(
              minLeadingWidth: 10,
              leading: Image.asset('images/flags/England.png'),
              title: Text('English'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            const Divider(thickness: 2,),
            ListTile(
              leading: Image.asset('images/flags/England.png'),
              title: Text('English'),
              trailing: Radio(
                value: 'en',
                groupValue: _value,
                onChanged: (value) {
                  setState((){
                    _value=value.toString();
                  });
                },
              ),
            ),
            Divider(thickness: 2,),
          ],
        ),
      ),
    );
  }
}
