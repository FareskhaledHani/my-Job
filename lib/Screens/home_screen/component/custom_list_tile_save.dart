import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import '../../../generated/l10n.dart';
import '../saved_screen/screens_saved/dialog_saved_screen.dart';

class CustomListTileSave extends StatelessWidget {
  const CustomListTileSave({
    Key? key,
    required this.nameJob,
    required this.locationJob,
    required this.iconJobConnection,
    required this.days,
    required this.nameCompany,
    required this.onTapIcon,
    required this.onTapListTile,
    // required this.index,
    // required this.context,
  }) : super(key: key);

  final String nameJob;
  final String locationJob;
  final String iconJobConnection;
  final String days;
  final String nameCompany;
  final VoidCallback onTapIcon;
  final VoidCallback onTapListTile;

  // final int index;
  // final var context;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 102.h,
      child: Column(
        children: [
          ListTile(
            onTap: onTapListTile,
            minVerticalPadding: 0,
            leading: Container(
              width: 50.w,height: 40.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(iconJobConnection),
                      fit: BoxFit.fill
                  ),
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10)
              ),

            ),
            subtitle: Text(
              '$nameCompany .$locationJob',
              style:  TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 8.sp,overflow: TextOverflow.ellipsis,color: Colors.black),
              maxLines:1,
            ),
            title: Text(
              nameJob,
              style:  TextStyle(
                fontWeight: FontWeight.w500, fontSize: 20.sp,overflow: TextOverflow.ellipsis,),
              maxLines:1,
            ),
            trailing: IconButton(
                onPressed: onTapIcon,
                //     () {
                //   showMiniScreenDialogSave(context);
                // },
                icon: const Icon(
                  Ionicons.ellipsis_horizontal_outline,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  days,
                  style: TextStyle(
                      color: const Color(0xff374151),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 10,
                      color: Color(0xff2E8E18),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(S.of(context).BeAnEarlyApplicant,
                        style: TextStyle(
                            color: const Color(0xff374151),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).w,
            child:  Divider(
              thickness: 2.h,
              height: 1.h,
              color: const Color(0xffE5E7EB),
            ),
          )
        ],
      ),
    );
  }
}