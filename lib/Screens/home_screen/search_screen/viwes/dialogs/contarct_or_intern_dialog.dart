import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../generated/l10n.dart';
import '../../../component/custom_change_color_container.dart';
import '../../cubits/color_container_cubit/contract_and_internship_cubit.dart';


class DialogScreenContractOrIntern extends StatelessWidget {
  const DialogScreenContractOrIntern({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
  providers: [
    BlocProvider(
  create: (context) => AnyInternshipContainer(),
),
    BlocProvider(
      create: (context) => HybridInternshipContainer(),
    ),
  ],
  child: DialogContentContractOrIntern(),
);
  }
}




class DialogContentContractOrIntern extends StatelessWidget {
  const DialogContentContractOrIntern({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30)),
      ),
      insetPadding: EdgeInsets.only(top: 500.h),
      // Remove padding around the dialog
      child:  Padding(
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
                        BlocBuilder<InternshipContainer, SelectInternship>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context
                                    .read<InternshipContainer>()
                                    .changeColorInternship();
                              },
                              containerColor:
                              state == SelectInternship.selectedInternship
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor:
                              state == SelectInternship.selectedInternship
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == SelectInternship.selectedInternship
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).InternShip,
                            );
                          },
                        ),
                        BlocBuilder<HybridInternshipContainer, HybridInternship>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context
                                    .read<HybridInternshipContainer>()
                                    .changeColorHybrid();
                              },
                              containerColor: state == HybridInternship.selectInternship
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor:
                              state == HybridInternship.selectInternship
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor: state == HybridInternship.selectInternship
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              text: S.of(context).Hybrid,
                            );
                          },
                        ),
                        BlocBuilder<AnyInternshipContainer, AnyInternship>(
                          builder: (context, state) {
                            return CustomChangeColorContainer(
                              OnTap: () {
                                context
                                    .read<AnyInternshipContainer>()
                                    .changeColorAny();
                              },
                              containerColor: state == AnyInternship.selectedAnyInternship
                                  ? const Color(0xffD6E4FF)
                                  : Colors.white,
                              borderContainerColor:
                              state == AnyInternship.selectedAnyInternship
                                  ? const Color(0xff3366FF)
                                  : const Color(0xffD1D5DB),
                              textColor:state == AnyInternship.selectedAnyInternship
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
