
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/custum_search_box.dart';
import '../../../components/custum_title_text.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../component/custum_help_container.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).TwoStepVerification,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SearchBox(
              onpressed: () {},
              titleSearch: S.of(context).WhatCanWeHelp,
            ),
            SizedBox(
              height: 20,
            ),
            WidgetHelpContainer(),
            SizedBox(
              height: 20,
            ),
            WidgetHelpContainer(),
            SizedBox(
              height: 20,
            ),
            WidgetHelpContainer(),
          ],
        ),
      ),
    );
  }
}


