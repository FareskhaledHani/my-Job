import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../generated/l10n.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar(
      {super.key, required this.onChange, required this.currentIndex});

  final Function(int) onChange;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 70,
      child: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor:const Color(0xff9CA3AF),
        currentIndex: currentIndex,
        onTap: onChange,
        items:  [
          BottomNavigationBarItem(
              label: S.of(context).Home,
              icon: const Icon(
                Icons.home,
              )),
          BottomNavigationBarItem(
              label: S.of(context).Massage,
              icon: const Icon(
                Ionicons.chatbox_ellipses_outline,
              )),
          BottomNavigationBarItem(
              label: S.of(context).Applied,
              icon: const Icon(
                FontAwesomeIcons.bagShopping,
              )),
          BottomNavigationBarItem(
              label: S.of(context).saved,
              icon: const Icon(FontAwesomeIcons.solidBookmark)),
          BottomNavigationBarItem(
              label: S.of(context).profile,
              icon: const Icon(
                Icons.person,
              )),
        ],
      ),
    );
  }
}
