import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeOfWorkIconRadio extends StatelessWidget {
   TypeOfWorkIconRadio({Key? key,required this.typeFile,required this.nameTypeWork,required this.radio}) : super(key: key);
  String nameTypeWork;
  String typeFile;
  // int index;
  // String valueRadio;
  // String groupValueRadio;
   Widget radio;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10).h,
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 0.5, color: Colors.grey)),
        child: ListTile(
          title: Text(nameTypeWork),
          minVerticalPadding: 10,
          isThreeLine: true,
          subtitle: Text(typeFile),
          selectedTileColor: Colors.blue,
          trailing:radio
        ),
      ),
    );
  }
}
