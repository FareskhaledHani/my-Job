import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/custum_title_in_cotainer.dart';
import '../../../constant/constants.dart';
import '../../../generated/l10n.dart';

class NotificationScreen extends StatefulWidget {
  NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool onChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimaryBackGroundColor,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Get.back();
              },
            );
          },
        ),
        foregroundColor: Colors.black,
        centerTitle: true,
        backgroundColor: Colors.white,
        title:  Text(
          S.of(context).Notification,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0).h,
        child: ListView(

            children: [
              TitleInContainer(
                title: S.of(context).JobNotification,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                      FlutterSwitch(
                          width: 50,
                          height: 30,
                          toggleColor: const Color(0xffD6E4FF),
                          toggleSize: 25,
                          borderRadius: 30,
                          padding: 3,
                          value: onChange, onToggle: (val){
                        setState((){
                          onChange=val;
                        });
                      }),
                  ],
                ),
              ),
            const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange, onToggle: (val){
                      setState((){
                        onChange=val;
                      });
                    }),
                  ],
                ),
              ),
              const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange, onToggle: (val){
                      setState((){
                        onChange=val;
                      });
                    }),
                  ],
                ),
              ),
              const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange, onToggle: (val){
                      setState((){
                        onChange=val;
                      });
                    }),
                  ],
                ),
              ),
              const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange, onToggle: (val){
                      setState((){
                        onChange=val;
                      });
                    }),
                  ],
                ),
              ),
              const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20,),
              TitleInContainer(
                title:S.of(context).OtherNotification,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange, onToggle: (val){
                      setState((){
                        onChange=val;
                      });
                    }),
                  ],
                ),
              ),
              const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: const Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange, onToggle: (val){
                      setState((){
                        onChange=val;
                      });
                    }),
                  ],
                ),
              ),
              const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Your Job Search Alert'),
                    FlutterSwitch(
                        width: 50,
                        height: 30,
                        toggleColor: const Color(0xffD6E4FF),
                        toggleSize: 25,
                        borderRadius: 30,
                        padding: 3,
                        value: onChange, onToggle: (val){
                      setState((){
                        onChange=val;
                      });
                    }),
                  ],
                ),
              ),
              const  Divider(
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
            ],
          ),
        ),

    );
  }
}
