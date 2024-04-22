import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../component/custom_change_color_container.dart';
import '../search_screen_filter.dart';

class DialogScreenContractOrIntern extends StatelessWidget {
  const DialogScreenContractOrIntern({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DialogContentContractOrIntern();
  }
}

class DialogContentContractOrIntern extends StatefulWidget {
  const DialogContentContractOrIntern({
    Key? key,
  }) : super(key: key);

  @override
  State<DialogContentContractOrIntern> createState() => _DialogContentContractOrInternState();
}



class _DialogContentContractOrInternState extends State<DialogContentContractOrIntern> {
  bool trueThreeButton = false;
  bool trueFourButton = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30)),
      ),
      insetPadding: EdgeInsets.only(top: 500.h),
      // Remove padding around the dialog
      child: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Title(
                  color: Colors.black,
                  child: Text(
                    'Contract / Internship',
                    style: TextStyle(
                        fontSize: 24.sp, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 35.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        CustomChangeColorContainer(
                          OnTap: () {
                            setState(() {
                              trueContractButton = !trueContractButton;
                            });
                          },
                          containerColor: (trueContractButton == false)
                              ? Colors.white
                              : const Color(0xffD6E4FF),
                          borderContainerColor: (trueContractButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          textColor: (trueContractButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          text: 'Contract',
                        ),
                        CustomChangeColorContainer(
                          OnTap: () {
                            setState(() {
                              trueInternShipButton = !trueInternShipButton;
                            });
                          },
                          containerColor: (trueInternShipButton == false)
                              ? Colors.white
                              : const Color(0xffD6E4FF),
                          borderContainerColor: (trueInternShipButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          textColor: (trueInternShipButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          text: 'Internship',
                        ),
                        CustomChangeColorContainer(
                          OnTap: () {
                            setState(() {
                              trueThreeButton = !trueThreeButton;
                            });
                          },
                          containerColor: (trueThreeButton == false)
                              ? Colors.white
                              : const Color(0xffD6E4FF),
                          borderContainerColor: (trueThreeButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          textColor: (trueThreeButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          text: 'Hybrid',
                        ),
                        CustomChangeColorContainer(
                          OnTap: () {
                            setState(() {
                              trueFourButton = !trueFourButton;
                            });
                          },
                          containerColor: (trueFourButton == false)
                              ? Colors.white
                              : const Color(0xffD6E4FF),
                          borderContainerColor: (trueFourButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          textColor: (trueFourButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          text: 'Any',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              //nextButton(buttonText: buttonText, onpressed: onpressed),
              SizedBox(
                height: 48.h,
                width: double.infinity,
                //width: 380.w,
                child: ElevatedButton(
                  child: Text('Show Result'),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: const Color(0XFF3366FF)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              //ElevatedButton(onPressed: (){}, child: Text('dnj'))
            ],
          ),
        ),
      ),
    );
  }
}
