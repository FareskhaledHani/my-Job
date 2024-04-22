import 'package:finalproject/Screens/reset_account/create_new_password_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';

class nextButton extends StatelessWidget {
   nextButton({
    required this.buttonText,required this.onpressed
  });
  var  buttonText;
  VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 48.h,
        //width: double.infinity,
        width: 380.w,
        child: ElevatedButton(
          onPressed: onpressed,
          child: buttonText,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              primary: Color(0XFF3366FF)),
        ),
      ),
    );
  }
}



class RichTextExtractWidget extends StatelessWidget {
  const RichTextExtractWidget({

    Key? key,required this.Text1,required this.Text2,required this.Text3
  }) : super(key: key);
  final String ?Text1;
  final String ?Text2;
  final String ?Text3;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text:Text1 ,
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
          children: <TextSpan>[
            TextSpan(
                text:Text2,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                )),
            TextSpan(
                text: Text3,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ))
          ]),
    );
  }
}
class OrSineWithAnAcount extends StatelessWidget {
  const OrSineWithAnAcount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 36,
            thickness: 2,
            endIndent: 20,
            indent: 20,
            color: Colors.grey[400],
          ),
        ),
        Text(
          'Or Sign up With Account',
          style: TextStyle(
              color: Color(0xFF6B7280), fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: Divider(
              color: Colors.grey[400],
              height: 36,
              thickness: 2,
              endIndent: 20,
              indent: 20,
            ))
      ],
    );
  }
}

class ButtonSinWith extends StatelessWidget {
  ButtonSinWith({
    required this.TextIcon,required this.image,required this.onPressed
  });
  String? TextIcon;
  String? image;
  late final Function ?onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed!(),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image!),
            SizedBox(width: 10.w,),
            Text(TextIcon!),
          ],
        ),
        decoration: BoxDecoration(
          // image: DecorationImage(image: AssetImage('images/create_acount/google.png'),),
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.sp),
            border: Border.all(width: 2.w,color: Color(0xFFD1D5DB))
        ),
        width: 154.w,
        height: 46.h,

      ),
    );
  }
}
class AppLogoAndBackButton extends StatelessWidget {
  const AppLogoAndBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Get.back();
            }, icon: Icon(Icons.keyboard_backspace)),
        Padding(
          padding: const EdgeInsets.only(right: 20).w,
          child: Image.asset('images/slider/J BSQUE .jpg'),
        ),
      ],
    );
  }
}



class SelectIconJob extends StatelessWidget {
  const SelectIconJob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88,
      height: 32,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            primary: Color(0XFF3366FF)),
        onPressed: (){}, child: Text('hsj'),),
    );
  }
}


class JobTybBoxFilter extends StatelessWidget {
   JobTybBoxFilter({ required this.name,required this.colorBox,required this.colorBoxBorder }) ;
  final String name;

final  Rx <Color> colorBox;
 final Rx <Color> colorBoxBorder;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 107.w,
      height: 34.h,
      decoration: BoxDecoration(
          border: Border.all(width: 1,color: colorBoxBorder.value,),
          color: colorBox.value,
          borderRadius: BorderRadius.circular(20)),
      child: Center(child: Text(name)),
    );
  }
}





