import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';

class WidgetHelpContainer extends StatelessWidget {
  const WidgetHelpContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(width: 1, color: KPrimaryGreyColor)),
      child: ExpansionTile(
        title: Text(S.of(context).TheCustomerIsVeryHappy),
        collapsedTextColor: Colors.black,
        collapsedIconColor: Colors.grey,
        textColor: Colors.black,
        iconColor: Colors.black,
        childrenPadding: EdgeInsets.all(10),
        //trailing: Icon(_customIcon?Icons.arrow_drop_down_circle:Icons.arrow_drop_down),
        children: [
          Text(S.of(context).SubTitleTOHelp)
        ],
        onExpansionChanged: (bool expanded) {},
      ),
    );
  }
}