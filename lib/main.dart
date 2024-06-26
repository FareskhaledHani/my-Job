import 'package:finalproject/Screens/cereate_acount/accoun_success.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/prefered_location/screen/preferd_location.dart';
import 'package:finalproject/Screens/hope_work_screen/screen/type_of_work.dart';
import 'package:finalproject/Screens/reset_account/controller.dart';
import 'package:finalproject/Screens/slider_screen/slider_screen.dart';
import 'package:finalproject/Screens/splash_screen/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Screens/home_screen/home_screen/cubit/book_mark_cubit_list/book_mark_cubit_list.dart';
import 'Screens/home_screen/search_screen/cubits/color_container_cubit/contract_and_internship_cubit.dart';
import 'Screens/home_screen/search_screen/cubits/color_container_cubit/full_and_part_cubit.dart';
import 'Screens/home_screen/search_screen/cubits/color_container_cubit/remote_and_onsite_cubit.dart';
import 'Screens/home_screen/search_screen/cubits/filter_cubit/filter_cubit.dart';
import 'core/cash_helper.dart';
import 'core/services/file_picker_helper.dart';
import 'generated/l10n.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await CacheHelper.init();
  await FilePickerHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: ScreenUtilInit(
        designSize: const Size(440, 750),
        // designSize: Size(428, 718),
        builder: (BuildContext context, Widget? child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => FullContainer(),
              ),
              BlocProvider(
                create: (context) => PartContainer(),
              ),
              BlocProvider(
                create: (context) => RemoteContainer(),
              ),
              BlocProvider(
                create: (context) => OnSiteContainer(),
              ), BlocProvider(
                create: (context) => ContractContainer(),
              ),
              BlocProvider(
                create: (context) => InternshipContainer(),
              ),BlocProvider(
                create: (context) => FilterCubit(),
              ),BlocProvider(
                create: (context) => BookmarkCubitList(),
              ),
            ],
            child: GetMaterialApp(
              locale: Locale(CacheHelper.getLanguage()),

              // fallbackLocale: const Locale('en'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              initialRoute: '/',
              getPages: [
                GetPage(name: '/', page: () => const SplashScreen()),
                GetPage(name: '/page0', page: () => SliderScreens()),
                GetPage(name: '/page1', page: () => CreateAccount()),
                GetPage(name: '/page2', page: () => TypeOfWorkScreen()),
                GetPage(name: '/page3', page: () => PreferdLocation()),
                GetPage(name: '/page4', page: () => const AccountSuccess()),
              ],
              debugShowCheckedModeBanner: false,
              //home: PreferdLocation(),
              home:
              //const LoginScreen(),
              const SplashScreen(),
              initialBinding: BindingsBuilder(() {
                Get.lazyPut(() => PasswordController());
              }),
              // home: PreferdLocation(),
            ),
          );
        },
      ),
    );
  }
}
