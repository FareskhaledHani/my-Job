import 'package:finalproject/Screens/bottom_nav_bar/manger/nav_bar_cubit.dart';
import 'package:finalproject/Screens/bottom_nav_bar/views/widgets/bottom_nav_bar_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBody: true,
      body: BlocProvider(
          create: (BuildContext context) {
            return NavBarCubit();
          },
          child: const BottomNavBarBody()),
    );
  }
}