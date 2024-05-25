import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerColorIsCompleted extends StatelessWidget {
  const ContainerColorIsCompleted({
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.colorBorder,
    required this.colorContainer,
    required this.colorIcon,
    Key? key,
  }) : super(key: key);
  final Color colorContainer;
  final Color colorBorder;
  final Color colorIcon;
  final String title;
  final String subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 80.h,
            decoration: BoxDecoration(
                color: colorContainer,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: colorBorder,
                )),
            child: ListTile(
              minVerticalPadding: 10,
              minLeadingWidth: 1,
              leading: Icon(
                Icons.check_circle,
                color: colorIcon,
              ),
              title: Text(title),
              subtitle: Text(subTitle),
              trailing: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}