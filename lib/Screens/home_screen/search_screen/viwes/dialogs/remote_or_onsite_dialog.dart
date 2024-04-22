import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../component/custom_change_color_container.dart';
import '../search_screen_filter.dart';

class DialogScreenRemoteOrOnSite extends StatelessWidget {
  const DialogScreenRemoteOrOnSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DialogContentRemoteOrOnsite();
  }
}

class DialogContentRemoteOrOnsite extends StatefulWidget {
  const DialogContentRemoteOrOnsite({
    Key? key,
  }) : super(key: key);

  @override
  State<DialogContentRemoteOrOnsite> createState() => _DialogContentFullOrPartState();
}



class _DialogContentFullOrPartState extends State<DialogContentRemoteOrOnsite> {
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
                    'on-Set / Remote',
                    style: TextStyle(
                        fontSize: 24.sp, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 35.h,
                child: ListView(
                  scrollDirection:Axis.horizontal ,
                  children: [
                    Row(
                      children: [
                        CustomChangeColorContainer(
                          OnTap: () {
                            setState(() {
                              trueRemoteButton = !trueRemoteButton;
                            });
                          },
                          containerColor: (trueRemoteButton == false)
                              ? Colors.white
                              : const Color(0xffD6E4FF),
                          borderContainerColor: (trueRemoteButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          textColor: (trueRemoteButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          text: 'Remote',
                        ),
                        CustomChangeColorContainer(
                          OnTap: () {
                            setState(() {
                              trueOnSiteButton = !trueOnSiteButton;
                            });
                          },
                          containerColor: (trueOnSiteButton == false)
                              ? Colors.white
                              : const Color(0xffD6E4FF),
                          borderContainerColor: (trueOnSiteButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          textColor: (trueOnSiteButton == false)
                              ? const Color(0xffD1D5DB)
                              : const Color(0xff3366FF),
                          text: 'On Site',
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
