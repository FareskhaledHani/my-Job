
import 'package:finalproject/Screens/cereate_acount/accoun_success.dart';
import 'package:finalproject/Screens/cereate_acount/cereate_acount.dart';
import 'package:finalproject/Screens/cereate_acount/preferd_location.dart';
//import 'package:finalproject/Screens/cereate_acount/preferd_location.dart';
//import 'package:finalproject/Screens/cereate_acount/preferd_location.dart';
import 'package:finalproject/Screens/cereate_acount/type_of_work.dart';
import 'package:finalproject/Screens/job_details/get_job_details_cubit/get_job_details_cubit.dart';
import 'package:finalproject/Screens/login_screen/login_screen.dart';
import 'package:finalproject/Screens/reset_account/controller.dart';
import 'package:finalproject/Screens/slider_screen/slider_screen.dart';
//import 'package:finalproject/Screens/splash_screen/splash.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:finalproject/Screens/cereate_acount/type_of_work.dart';
// import 'package:finalproject/Screens/slider_screen/slider_screen.dart';
// import 'package:finalproject/Screens/splash_screen/splash.dart';
//import 'package:finalproject/Screens/splash_screen/splash.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
// import 'package:get/get_navigation/src/routes/get_route.dart';

main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

            initialRoute: '/',
            getPages: [
              GetPage(name: '/', page: () => HomePage()),
              GetPage(name: '/page1', page: () => CereateAcount()),
              GetPage(name: '/page2', page: () => TybeOfWork()),
              GetPage(name: '/page3', page: () =>  PreferdLocation()),
              GetPage(name: '/page4', page: () =>  const AcountSuccess()),
            ],
            debugShowCheckedModeBanner: false,
           //home: PreferdLocation(),
           home:BlocProvider(
             create: (context) => JobDetailsCubit(),
             child: LoginScreen(),
           ),

          // ,
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
