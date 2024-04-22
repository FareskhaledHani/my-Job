import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../components/custum_job_type_box.dart';
import '../../../../components/custum_mini_container_buble.dart';
import '../../../../components/custum_title_in_cotainer.dart';
import '../../../../generated/l10n.dart';
import '../../../again_applied_job/bio_again_applied_job.dart';
import '../../../again_applied_job/type_of_work_again_applied_job.dart';
import '../../../again_applied_job/upload_again_applied_job.dart';


class ActiveScreen extends StatelessWidget {
  const ActiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleInContainer(
          title: '3 ${S.of(context).Jobs}',
        ),
        InkWell(
          onTap: (){Get.to(()=>BioAgainAppliedJob()); },
          child: Container(

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text('UI/UX Desighner'),
                    leading: Image.asset('images/apply_job/Spectrum Logo.png'),
                    subtitle: Text('Spectrum • Jakarta, Indonesia '),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 25,),
                    child: Row(
                      children: [
                        JobTybBox(
                          name: 'fullTime',
                          height: 29.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        JobTybBox(
                          name: 'fullTime',
                          height: 29.0,
                        ),
                        Expanded(
                          child: Text(
                            'Posted 2 days ago',
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                  const CustumMiniContainerBubleBio(),
                  const Divider(thickness: 2,indent: 25,endIndent: 25,color: Color(0xffE5E7EB),)
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){Get.to(()=>UpLoadAgainAppliedJob()); },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text('UI/UX Desighner'),
                    leading: Image.asset('images/apply_job/Spectrum Logo.png'),
                    subtitle: Text('Spectrum • Jakarta, Indonesia '),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 25,),
                    child: Row(
                      children: [
                        JobTybBox(
                          name: 'fullTime',
                          height: 29.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        JobTybBox(
                          name: 'fullTime',
                          height: 29.0,
                        ),
                        Expanded(
                          child: Text(
                            'Posted 2 days ago',
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                  const CustumMiniContainerBubleUpload(),
                  const Divider(thickness: 2,indent: 25,endIndent: 25,color: Color(0xffE5E7EB),)
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){Get.to(()=>TypeAgainAppliedJob()); },
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  ListTile(
                    title: Text('UI/UX Desighner'),
                    leading: Image.asset('images/apply_job/Spectrum Logo.png'),
                    subtitle: Text('Spectrum • Jakarta, Indonesia '),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,right: 25,),
                    child: Row(
                      children: [
                        JobTybBox(
                          name: 'fullTime',
                          height: 29.0,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        JobTybBox(
                          name: 'fullTime',
                          height: 29.0,
                        ),
                        Expanded(
                          child: Text(
                            'Posted 2 days ago',
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                  const CustumMiniContainerBubleType(),
                  const Divider(thickness: 2,indent: 25,endIndent: 25,color: Color(0xffE5E7EB),)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}


