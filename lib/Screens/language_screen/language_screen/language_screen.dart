import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/cash_helper.dart';
import '../../../generated/l10n.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  final List<Map<String, String>> languageList = [
    {'name': 'English', 'flag': 'images/flags/England.png', 'locale': 'en'},
    {'name': 'Indonesia', 'flag': 'images/flags/Indonesia.png', 'locale': 'id'},
    {'name': 'Arabic', 'flag': 'images/flags/Saudi Arabia.png', 'locale': 'ar'},
    {'name': 'Dutch', 'flag': 'images/flags/Netherlands.png', 'locale': 'nl'},
    {'name': 'French', 'flag': 'images/flags/France.png', 'locale': 'fr'},
    {'name': 'German', 'flag': 'images/flags/Germany.png', 'locale': 'de'},
    {'name': 'Japanese', 'flag': 'images/flags/Japan.png', 'locale': 'ja'},
    {'name': 'Korean', 'flag': 'images/flags/South Korea.png', 'locale': 'ko'},
    {'name': 'Portuguese', 'flag': 'images/flags/Portugal.png', 'locale': 'pt'},
  ];

  String selectedLanguage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: true,
        title: Text(
          S.of(context).Language,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: languageList.length,
          itemBuilder: (context, index) {
            final language = languageList[index];
            return buildLanguageTile(context, language);
          },
        ),
      ),
    );
  }

  Widget buildLanguageTile(BuildContext context, Map<String, String> language) {
    final String languageName = language['name']!;
    final String flagPath = language['flag']!;
    final String locale = language['locale']!;
    return Column(
      children: [
        ListTile(
          onTap: () {
            setState(() {
              selectedLanguage = locale;
              CacheHelper.setLanguage(locale);
              Get.updateLocale(Locale(locale));
            });
          },
          minLeadingWidth: 10,
          leading: Image.asset(flagPath),
          title: Text(languageName),
          trailing: Radio<String>(
            value: locale,
            groupValue: CacheHelper.getLanguage(),
            onChanged: (value)  {
            },
          ),
        ),
        Divider(
          thickness: 1.h,
          indent: 20.w,
          endIndent: 30.w,
        )
      ],
    );
  }
}
