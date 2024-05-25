import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../generated/l10n.dart';
import '../../component/custom_change_color_container.dart';
import '../../component/custom_drop_down_button.dart';
import '../../component/custom_filter_text_field.dart';
import '../cubits/color_container_cubit/contract_and_internship_cubit.dart';
import '../cubits/color_container_cubit/full_and_part_cubit.dart';
import '../cubits/color_container_cubit/remote_and_onsite_cubit.dart';
import '../cubits/filter_cubit/filter_cubit.dart';




class FullDialogContent extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  bool shouldReload = false;
  String valueTitle = '';
  String valueLocation = '';
  String valueSalary = '';

  FullDialogContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      insetPadding: EdgeInsets.only(top: 40.h),
      // Remove padding around the dialog
      child: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: SizedBox(
          width: double.infinity,
          child: ListView(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                    Text(
                      S.of(context).SetFilter,
                      style: TextStyle(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          S.of(context).Reset,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18.sp),
                        ))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      S.of(context).JobTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.sp),
                    ),
                    SizedBox(height: 10.h),
                    CustomFilterTextField(

                      iconSet: const Icon(
                        FontAwesomeIcons.briefcase,
                        color: Colors.black,
                      ),
                      controller: titleController,
                      validator: (value) {
                        return null;
                      },
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      S.of(context).Location,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.sp),
                    ),
                    SizedBox(height: 10.h),
                    CustomFilterTextField(
                      iconSet: const Icon(
                        Icons.place_outlined,
                        color: Colors.black,
                      ),
                      validator: (value) {
                        return null;
                      },
                      controller: locationController,
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      S.of(context).Salary,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16.sp),
                    ),
                    SizedBox(height: 10.h),
                    DropdownButtonExample(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      S.of(context).JobType,
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                    Row(
                      children: [
                        BlocBuilder<FullContainer, SelectFull>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context.read<FullContainer>().changeColorFull();
                              },
                              containerColor: state == SelectFull.selectedFull
                                  ?  const Color(0xffD6E4FF):  Colors.white,
                              borderContainerColor:
                                  state == SelectFull.selectedFull
                                      ? const Color(0xff3366FF)
                                      : const Color(0xffD1D5DB),
                              textColor: state == SelectFull.selectedFull
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).FullTime,
                            );
                          },
                        ),
                        BlocBuilder<RemoteContainer, SelectRemote>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context.read<RemoteContainer>().changeColorRemote();
                              },
                              containerColor: state == SelectRemote.selectedRemote
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor: state == SelectRemote.selectedRemote
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectRemote.selectedRemote
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).Remote,
                            );
                          },
                        ),
                        BlocBuilder<ContractContainer, SelectContract>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {context.read<ContractContainer>().changeColorContract();},
                              containerColor: state == SelectContract.selectedContract
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor: state == SelectContract.selectedContract
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectContract.selectedContract
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).Contract,
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        BlocBuilder<PartContainer, SelectPart>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {context.read<PartContainer>().changeColorPart();},
                              containerColor: state == SelectPart.selectedPart
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor: state == SelectPart.selectedPart
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectPart.selectedPart
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).PartTime,
                            );
                          },
                        ),
                        BlocBuilder<OnSiteContainer, SelectOnSite>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {context.read<OnSiteContainer>().changeColorOnsite();},
                              containerColor: state == SelectOnSite.selectedOnSite
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor: state == SelectOnSite.selectedOnSite
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectOnSite.selectedOnSite
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).OnSite,
                            );
                          },
                        ),
                        BlocBuilder<InternshipContainer, SelectInternship>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {context.read<InternshipContainer>().changeColorInternship();},
                              containerColor: state == SelectInternship.selectedInternship
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor:state == SelectInternship.selectedInternship
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectInternship.selectedInternship
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).InternShip,
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 82.h,
                    ),
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
                          BlocProvider.of<FilterCubit>(context).fetchFilterJobs(
                            valueTitle,
                          );
                          Navigator.pop(context);
                          // Future.delayed(const Duration(seconds: 1),() {
                          //
                          // }
                          // );
                          // Get.to(()=>  ResultFilterScreen(valueTitle:valueTitle, valueLocation:valueLocation, valueSalary: '',));
                        },
                        child: Text(S.of(context).ShowResult),
                      ),
                    ),
                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}
