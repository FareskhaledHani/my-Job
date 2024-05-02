import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home_screen/applied_screen/screen/applied_screen.dart';
import '../../../home_screen/home_screen/home_screen.dart';
import '../../../home_screen/message_screen/message_screen/message_scrreen.dart';
import '../../../home_screen/profile_screen/profile_screen/profile_screen.dart';
import '../../../home_screen/saved_screen/screens_saved/save_screen.dart';
import '../../manger/nav_bar_cubit.dart';
import 'custom_buttom_nav_bar.dart';

class BottomNavBarBody extends StatelessWidget {
  const BottomNavBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarCubit, NavBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NavBarCubit.get(context);
          Widget containerBack() {
            if (cubit.currentIndex == 0) {
              return  HomeScreen();
            } else if (cubit.currentIndex == 1) {
              return  const MessageScreen();
            } else if (cubit.currentIndex == 2) {
              return  const AppliedJop();
            } else if(cubit.currentIndex==3) {
              return SaveScreen();
            }
            else{
              return  const ProfileScreen();
            }
          }

          return Scaffold(
            bottomNavigationBar: CustomBottomNavBar(
              onChange: (index) {
                cubit.changeBottomNavBar(index);
              },
              currentIndex: cubit.currentIndex,
            ),
            body: containerBack(),
          );
        });
  }
}