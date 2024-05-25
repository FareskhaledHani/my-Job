import 'package:finalproject/Screens/apply_job/screen_apply_job/upload_portfolio_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../../components/custom_main_button.dart';
import '../../../components/custum_container_buble.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';
import '../cubits/radio_cubit.dart';
import '../models/type_of_work_model.dart';

class TypeOfWork extends StatelessWidget {
  TypeOfWork({
    Key? key,
    required this.name,
    required this.email,
    required this.number,
  }) : super(key: key);

  final String name;
  final String email;
  final String number;
  final List<TypeWorkModel> workCard = [
    TypeWorkModel(
        nameWork: 'Senior Ux Designer', portfolio: 'Cv.pdf . portfolio'),
    TypeWorkModel(
        nameWork: 'Senior Ui Designer', portfolio: 'Cv.pdf . portfolio'),
    TypeWorkModel(
        nameWork: ' Flutter Developer', portfolio: 'Cv.pdf . portfolio'),
    TypeWorkModel(
        nameWork: 'Graphic Designer', portfolio: 'Cv.pdf . portfolio'),
  ];
    String selectRadio='SeniorUxDesigner';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RadioButtonCubit(),
      child: Scaffold(
        backgroundColor: KPrimaryBackGroundColor,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_outlined),
                onPressed: () {
                  Get.back();
                },
              );
            },
          ),
          foregroundColor: Colors.black,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            S.of(context).AppliedJob,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical:10.h ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustumContainerBubleType(),
              SizedBox(
                height: 40.h,
              ),
              Text(
                S.of(context).TypeOfWork,
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(S.of(context).FillInYourBioDataCorrectly),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 420.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: workCard.length,
                  itemBuilder: (BuildContext context, int index) {
                    final RadioButtonValue value = RadioButtonValue.values[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10).h,
                      child: Container(
                        height: 80.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(width: 0.5, color: Colors.grey)),
                        child: ListTile(
                          onTap: (){},
                          title: Text(workCard[index].nameWork),
                          minVerticalPadding: 10,
                          isThreeLine: true,
                          subtitle: Text(workCard[index].portfolio),
                          selectedTileColor: Colors.blue,
                          trailing: Radio<RadioButtonValue>(
                            value: value,
                            groupValue: context.watch<RadioButtonCubit>().state,
                            onChanged: (newValue) {
                              selectRadio=value.name;
                              context.read<RadioButtonCubit>().selectRadioButton(newValue!);
                              print(value.name);
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: MainButton(
                      buttonText: Text(S.of(context).Next),
                      onPressed: () {
                        Get.to(() =>  UploadFile(email: email, number: number, name: name, selectRadio: selectRadio,));
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
