import 'package:finalproject/Screens/home_screen/search_screen/viwes/search_screen_filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../component/custom_change_color_container.dart';
import '../../cubits/color_container_cubit/full_and_part_cubit.dart';

class DialogScreenFullOrPart extends StatelessWidget {
  const DialogScreenFullOrPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => HybridContainer(),
),
    BlocProvider(
      create: (context) => AnyFullContainer(),
    ),
  ],
  child: DialogContentFullOrPart(),
);
  }
}


class DialogContentFullOrPart extends StatelessWidget {
  const DialogContentFullOrPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
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
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
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
                        BlocBuilder<FullContainer, SelectFull>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context.read<FullContainer>().changeColorFull();
                              },
                              containerColor: state == SelectFull.selectedFull
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor: state == SelectFull.selectedFull
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectFull.selectedFull
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: 'Full Time',
                            );
                          },
                        ),
                        BlocBuilder<PartContainer, SelectPart>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context.read<PartContainer>().changeColorPart();
                              },
                              containerColor: state == SelectPart.selectedPart
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor: state == SelectPart.selectedPart
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectPart.selectedPart
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: 'Part Time',
                            );
                          },
                        ),
                        BlocBuilder<HybridContainer, HybridFull>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context.read<HybridContainer>().changeColorHybrid();
                              },
                              containerColor: state == HybridFull.selectHybrid
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor: state == HybridFull.selectHybrid
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == HybridFull.selectHybrid
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: 'Hybrid',
                            );
                          },
                        ),
                        BlocBuilder<AnyFullContainer, AnyFull>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context.read<AnyFullContainer>().changeColorAny();
                              },
                              containerColor: state == AnyFull.selectedAnyFull
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor:state == AnyFull.selectedAnyFull
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == AnyFull.selectedAnyFull
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: 'Any',
                            );
                          },
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
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: const Color(0XFF3366FF)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Show Result'),
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
