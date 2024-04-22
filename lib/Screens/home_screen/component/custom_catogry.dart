import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../components/custum_job_type_box.dart';

class CatogryCards extends StatelessWidget {
  const CatogryCards({
    Key? key,
    required this.image,
    required this.nameJob,
    required this.nameComp,
    required this.jobTimeType,
    required this.mony, required this.location,
  }) : super(key: key);
  final String image;
  final String nameJob;
  final String nameComp;
  final String jobTimeType;
  final String mony;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Container(
        height: 104.h,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(

                    width: 50.w,height: 40.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(image),
                            fit: BoxFit.fill
                          ),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)
                        ),

                        ),
                    SizedBox(width: 15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameJob,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            Text(
                              nameComp,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10,),

                            ),
                            SizedBox(
                              width: 150.w,
                              child: Text(
                                location,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 10,overflow: TextOverflow.ellipsis,),
                                maxLines:1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(FontAwesomeIcons.bookmark)
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    JobTybBox(
                      name: jobTimeType,
                      height: 26.h,
                    ),
                  ],
                ),
                RichText(text: TextSpan(
                    children: [
                      TextSpan(text:"\$$mony ",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.green[900]),),
                      const TextSpan(text:"/month",
                        style:TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),)
                    ]
                )),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            const Divider(
              thickness: 1,
              height: 1,
              color: Colors.black12,
              endIndent: 10,
            )
          ],
        ),
      ),
    );
  }
}
