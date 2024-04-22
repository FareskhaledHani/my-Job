import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../components/custum-field_date_select.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../edit_profile/edit_profile_screen/edit_profile_screen.dart';
import '../../../slider_screen/extract_widget.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}



class _EducationState extends State<Education> {
  TextEditingController _dateController2 = TextEditingController();
  TextEditingController _dateController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustumTitle_500_20_black(
          title: S.of(context).Education,
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 484,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).University,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 5.h),
                  FieldUsedHint(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    S.of(context).Title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 5.h),
                  FieldUsedHint(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    S.of(context).StartYear,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 10.h),
                  FieldUsedInDate(onPressed: () {  _selectDate1(); }, controller: _dateController1,),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    S.of(context).EndYear,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Color(0xff9CA3AF)),
                  ),
                  SizedBox(height: 10.h),
                  FieldUsedInDate(
                    onPressed: () {
                      _selectDate2();
                    },
                    controller: _dateController2,
                  ),
                  Expanded(
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Center(
                              child: nextButton(
                                  buttonText: S.of(context).Save, onpressed: () {}))))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ListTile(
                minVerticalPadding: 15,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child:
                      Image.asset('images/compleate_profile/Group 15495.png'),
                ),
                title: Text('Senior UI/UX Designer'),
                subtitle: Text('Bachelor of Art and Design\n2012 - 2015'),
                trailing: const Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Future<void> _selectDate1() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      setState(() {
        _dateController1.text = _picked.toString().split(" ")[0];
        print(_dateController1.text);
      });
    }
  }

  Future<void> _selectDate2() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_picked != null) {
      setState(() {
        _dateController2.text = _picked.toString().split(" ")[0];
        print(_dateController2.text);
      });
    }
  }
}


