import 'package:finalproject/Screens/cereate_acount/accoun_success.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/cereate_acount/preferd_location.dart';
import 'package:finalproject/Screens/cereate_acount/type_of_work.dart';
import 'package:finalproject/Screens/reset_account/controller.dart';
import 'package:finalproject/Screens/slider_screen/slider_screen.dart';
import 'package:finalproject/Screens/splash_screen/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/cash_helper.dart';
import 'generated/l10n.dart';


main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await CacheHelper.init();
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
          return GetMaterialApp(
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
              GetPage(name: '/page0', page: () => HomePage()),
              GetPage(name: '/page1', page: () => CereateAcount()),
              GetPage(name: '/page2', page: () => TybeOfWork()),
              GetPage(name: '/page3', page: () =>  PreferdLocation()),
              GetPage(name: '/page4', page: () =>  const AcountSuccess()),
            ],
            debugShowCheckedModeBanner: false,
           //home: PreferdLocation(),
           home:const SplashScreen(),
            initialBinding: BindingsBuilder(() {
              Get.lazyPut(() => PasswordController());
            }),
           // home: PreferdLocation(),
          );
        },
      ),
    );
  }
}
