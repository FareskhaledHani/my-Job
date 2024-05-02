import 'package:finalproject/Screens/chat_screen/chat_screen/show_dialog_screen.dart';
import 'package:finalproject/Screens/home_screen/profile_screen/models/get_profile_model.dart';
import 'package:finalproject/Screens/portfolio_screen/cubit_portFolio/post_portfolio_cubit/post_portfolio_cubit.dart';
import 'package:finalproject/components/custum_subtitle_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../../../components/custum_title_in_cotainer.dart';
import '../../../../components/custum_title_text.dart';
import '../../../../constant/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../compleated_profile/screens/complet_profile/complete_profile.dart';
import '../../../edit_profile/edit_profile_screen/edit_profile_screen.dart';
import '../../../help_center_screen/help_center_screen/help_center_screen.dart';
import '../../../language_screen/language_screen/language_screen.dart';
import '../../../login_and_security/Login_and_security_screen/login_and_security.dart';
import '../../../notification/notification_screen/notification_screen.dart';
import '../../../portfolio_screen/portfolio_screen/portfolio_screen.dart';
import '../../../privacy_pollicy_screen/screen/privacy_policy_screen.dart';
import '../../../terms & conditions_screen/screen/terms & conditions_screen.dart';
import '../Components/custom_alert_dialog.dart';
import '../Components/custum_list_tile_profile.dart';
import '../Components/custum_number_profile.dart';
import '../models/profile_model.dart';
import '../service/get_profile_service.dart';
import '../service/profile_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
bool reload=false;
class _ProfileScreenState extends State<ProfileScreen> {

  GetProfileService getProfileService = GetProfileService();
  ProfileService profileService =ProfileService();
  GlobalKey<FormState> formKeyEditProfile = GlobalKey();
  GlobalKey<FormState> globalKey = GlobalKey();
  final GlobalKey<FormState>formKey=GlobalKey();
 final  TextEditingController passwordUpdate=TextEditingController();
  late String name;

  @override
  void initState() {
    ProfileService().profileService();
    GetProfileService().getUserProfile();

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_outlined,
            size: 20.sp,
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color(0xffD6E4FF),
        title: const CustumTitle_500_18_black(
          title: 'Profile',
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context) {
                  return const LogOutAlertDialog();
                });
              },
              icon: const Icon(
                FontAwesomeIcons.arrowRightFromBracket,
                size: 15,
                color: Colors.red,
              ))
        ],
        centerTitle: true,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh:()async{  await getProfileService.getUserProfile(); await profileService.profileService();},
        child: FutureBuilder<GetUserProfileModel?>(
          future: getProfileService.getUserProfile(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child:  CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              final getProfileData = snapshot.data!;

              return ListView(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [

                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120.h,
                          color: const Color(0xffD6E4FF),
                        ),
                      ),
                      Positioned(
                          bottom: -40.h,
                          child: CircleAvatar(
                            radius: 60.sp,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 55.sp,
                              child: Image.asset(
                                  'images/home_screen/profile/Profile.png'),
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 14,
                  ),
                  FutureBuilder<ProfileName>(
                    future: profileService.profileService(),
                    builder: (BuildContext context,  snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: SizedBox());
                      } else
                        if (snapshot.hasError) {
                        return Text('Error: ${S.of(context).PleaseCheckYourNetwork}');
                      } else {
                       name = snapshot.data!.name;
                      return Center(
                          child:
                          CustumTitle_500_18_black(title: name ));}
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                      child: CustumSubTitle_400_12_grey(
                          subTitle: getProfileData.email)),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                              color: const Color(0xffFAFAFA),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              CustumNumberProfile(
                                value: '46',
                                titleText: S.of(context).Applied,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10),
                                child: Container(
                                  width: 2,
                                  color: const Color(0xffD1D5DB),
                                ),
                              ),
                              CustumNumberProfile(
                                value: '23',
                                titleText: S.of(context).Reviewed,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10),
                                child: Container(
                                  width: 2,
                                  color: const Color(0xffD1D5DB),
                                ),
                              ),
                              CustumNumberProfile(
                                value: '16',
                                titleText: S.of(context).Contacted,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              S.of(context).About,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: KsubtitleColor),
                            ),
                            TextButton(
                                onPressed: () {}, child: Text(S.of(context).Edit))
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                              color: KsubtitleColor),
                        )
                      ],
                    ),
                  ),
                  TitleInContainer(
                    title: S.of(context).General,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20).h,
                    child: Container(
                      child: Column(
                        children: [
                          CustomListTileProfile(
                            title: S.of(context).EditProfile,
                            onpress: () {
                              Get.to(() => EditProfile(
                                    initialValueName: name,
                                    initialValueAddress: getProfileData.address,
                                    formKey: formKeyEditProfile,
                                    initialValueNumber: getProfileData.mobile,
                                    initialValueBio: getProfileData.bio,
                                reloadCallback: () {
                                  getProfileService.getUserProfile();
                                  Navigator.pop(context, true); // Pass true to indicate reload
                                },
                                  ));
                            },
                            icon: Icons.person_outline,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          ),
                          CustomListTileProfile(
                            title: S.of(context).PortFolio,
                            onpress: () {
                              Get.to(() => BlocProvider(
                                    create: (context) => PostPortfolioCubit(),
                                    child: PortfolioEdit(
                                      // portfolio: getProfileData.portfolio,
                                    ),
                                  ));
                            },
                            icon: FontAwesomeIcons.folderClosed,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          ),
                          CustomListTileProfile(
                            title: S.of(context).Language,
                            onpress: () {
                              Get.to(() => LanguageScreen());
                            },
                            icon: Ionicons.globe,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          ),
                          CustomListTileProfile(
                            title: S.of(context).Notification,
                            onpress: () {
                              Get.to(() => NotificationScreen());
                            },
                            icon: FontAwesomeIcons.bell,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          ),
                          CustomListTileProfile(
                            title: S.of(context).LoginAndSecurity,
                            onpress: () {
                              Get.to(() =>  LoginAndSecurity(email: getProfileData.email, number:getProfileData.mobile.toString(), globalKey: globalKey, getProfileService: getProfileService, formKey: formKey, passwordUpdate: passwordUpdate,));
                            },
                            icon: Icons.lock_outlined,
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                  TitleInContainer(
                    title: S.of(context).Others,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20).h,
                    child: Container(
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Get.to(
                                () => ColorChangeContainerWidget(),
                              );
                            },

                            // onTap: (){Get.to(()=> ColorChangeContainerWidget(colorSelect1: null,));},
                            title: Text(S.of(context).Accessibility),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.sp,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          ),
                          ListTile(
                            onTap: () {
                              Get.to(
                                () => const HelpCenterScreen(),
                              );
                            },
                            title: Text(S.of(context).HelpCenter),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.sp,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          ),
                          ListTile(
                            title: Text(S.of(context).TermsConditions),
                            onTap: () {
                              Get.to(() => const TermsAndConditions());
                            },
                            trailing: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.sp,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          ),
                          ListTile(
                            onTap: () {
                              Get.to(() => const PrivacyPolicy());
                            },
                            title: Text(S.of(context).PrivacyPolicy),
                            trailing: IconButton(
                              icon: Icon(
                                Icons.arrow_forward_rounded,
                                size: 20.sp,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const Divider(
                            thickness: 1,
                            indent: 20,
                            endIndent: 30,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }

}
