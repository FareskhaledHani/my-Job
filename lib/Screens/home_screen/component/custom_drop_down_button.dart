import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DropdownButtonExample extends StatefulWidget {
  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}
String? selectedValue;
class _DropdownButtonExampleState extends State<DropdownButtonExample> {


  List<String> dropdownValues = [
    '\$5k- \$10k',
    '\$12k- \$15k',
    '\$15k- \$20k',
    '\$30k- \$40k',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

     // width: MediaQuery.of(context).size.width,
     padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1,color: Colors.grey),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 20.sp,
        icon: const Icon(FontAwesomeIcons.chevronDown),
        isExpanded: true,
        value: selectedValue,
        hint: const Icon(Icons.monetization_on_outlined,color: Colors.black,),
        onChanged: (newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownValues.map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}


