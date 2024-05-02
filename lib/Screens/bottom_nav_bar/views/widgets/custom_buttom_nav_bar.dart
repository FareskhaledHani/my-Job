import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../components/no_notification_message_bar.dart';
import '../../../../generated/l10n.dart';
import '../../../home_screen/saved_screen/cubits_fav/get_favorite_cubit/get_favorite_cubit.dart';
import '../../../home_screen/saved_screen/model/get_favorite_model.dart';

class CustomBottomNavBar extends StatelessWidget {
   const CustomBottomNavBar(
      {super.key, required this.onChange, required this.currentIndex});

  final Function(int) onChange;
  final int currentIndex;
  // int countSaved=7;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GetFavoriteJob>>(
      future: GetFavoriteServices().getFavoriteJobs(),
      builder: (BuildContext context,AsyncSnapshot<List<GetFavoriteJob>> snapshot)
    { if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }
    else if (snapshot.hasError) {
      return Center(
          child:
          Text(S.of(context).PleaseCheckYourNetworkAndTryAgain));
    }
    else {
      final List<GetFavoriteJob>? favoriteJobs = snapshot.data;
      if (favoriteJobs == null ) {
        return  NoCountNotification(currentIndex: currentIndex, onChange: onChange);
      }
      else if (favoriteJobs.isEmpty ){
        return  NoCountNotification(currentIndex: currentIndex, onChange: onChange);
      }
      return
        Container(
          color: Colors.transparent,
          height: 70.h,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: const Color(0xff9CA3AF),
            currentIndex: currentIndex,
            onTap: onChange,
            items: [
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
                  icon:
                  // Icon(FontAwesomeIcons.solidBookmark),
                  buildCustomBadge(
                      counter:favoriteJobs.length,
                      child: const Icon(FontAwesomeIcons.solidBookmark))
              ),
              BottomNavigationBarItem(
                  label: S.of(context).profile,
                  icon: const Icon(
                    Icons.person,
                  )),
            ],
          ),
        );}
    },

    );
  }

  buildCustomBadge({
    required Widget child,
    required int counter}) {
    final text =counter.toString();
    return Stack(
      children: [
        child,
        Positioned(
         top: 0,
            right: 0,
            child:CircleAvatar(radius: 7,
            backgroundColor: Colors.red,
            child: Text(text,style:  TextStyle(color: Colors.white,fontSize: 12.sp),),
            )
        ),
      ],
    );
  }
}

