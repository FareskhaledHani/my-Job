import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../generated/l10n.dart';
import '../../../component/custom_change_color_container.dart';
import '../../cubits/color_container_cubit/remote_and_onsite_cubit.dart';


class DialogScreenRemoteOrOnSite extends StatelessWidget {
  const DialogScreenRemoteOrOnSite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HybridRemoteContainer(),
        ),
        BlocProvider(
          create: (context) => AnyRemoteContainer(),
        ),
      ],
      child: const DialogContentRemoteOrOnsite(),
    );
  }
}

class DialogContentRemoteOrOnsite extends StatelessWidget {
  const DialogContentRemoteOrOnsite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
                        BlocBuilder<RemoteContainer, SelectRemote>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context
                                    .read<RemoteContainer>()
                                    .changeColorRemote();
                              },
                              containerColor:
                                  state == SelectRemote.selectedRemote
                                      ? const Color(0xffD6E4FF)
                                      : Colors.white,
                              borderContainerColor:
                                  state == SelectRemote.selectedRemote
                                      ? const Color(0xff3366FF)
                                      : const Color(0xffD1D5DB),
                              textColor: state == SelectRemote.selectedRemote
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).Remote,
                            );
                          },
                        ),
                        BlocBuilder<OnSiteContainer, SelectOnSite>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context
                                    .read<OnSiteContainer>()
                                    .changeColorOnsite();
                              },
                              containerColor:
                                  state == SelectOnSite.selectedOnSite
                                      ? const Color(0xffD6E4FF)
                                      : Colors.white,
                              borderContainerColor:
                                  state == SelectOnSite.selectedOnSite
                                      ? const Color(0xff3366FF)
                                      : const Color(0xffD1D5DB),
                              textColor: state == SelectOnSite.selectedOnSite
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).OnSite,
                            );
                          },
                        ),
                        BlocBuilder<HybridRemoteContainer, HybridRemote>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context
                                    .read<HybridRemoteContainer>()
                                    .changeColorHybrid();
                              },
                              containerColor: state == HybridRemote.selectHybrid
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor:
                                  state == HybridRemote.selectHybrid
                                      ? const Color(0xff3366FF)
                                      : const Color(0xffD1D5DB),
                              textColor: state == HybridRemote.selectHybrid
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).Hybrid,
                            );
                          },
                        ),
                        BlocBuilder<AnyRemoteContainer, AnyRemote>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context
                                    .read<AnyRemoteContainer>()
                                    .changeColorAny();
                              },
                              containerColor: state == AnyRemote.selectedAnyFull
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor:
                                  state == AnyRemote.selectedAnyFull
                                      ? const Color(0xff3366FF)
                                      : const Color(0xffD1D5DB),
                              textColor: state == AnyRemote.selectedAnyFull
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text:S.of(context).Any,
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
                  child:  Text(S.of(context).ShowResult),
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
