import 'package:finalproject/Screens/reset_account/create_new_password_screen.dart';
import 'package:finalproject/Screens/slider_screen/extract_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class nextButton extends StatelessWidget {
   nextButton({
    required this.buttonText,required this.onpressed
  });
  String  buttonText;
  VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      //width: double.infinity,
      width: 380.w,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
            primary: Color(0XFF3366FF)),
      ),
    );
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20).w,
          child: Image.asset('images/slider/J BSQUE .jpg'),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.blueGrey),
            ))
      ],
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
class SighnWithGoogleAndFaceBook extends StatelessWidget {
  const SighnWithGoogleAndFaceBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // GoogleSignInButton(onPressed: (){},),
      Expanded(
        flex: 1,
        child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ButtonSinWith(onPressed: (){}, image: 'images/create_acount/google.png', TextIcon: 'Google',)
        ),
      ),

      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child:  ButtonSinWith(TextIcon: 'FaceBook', image: 'images/create_acount/Facebook.png', onPressed: (){},),
        ),
      ),
    ],);
  }
}
class SearchBox extends StatelessWidget {
  SearchBox({ required this.onpressed});
  VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return
      TextField(
        onTap:onpressed,

      decoration: InputDecoration(
        labelText: 'Search...',
        hintText: 'Enter your search query',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
      onChanged: (text) {
        // Handle text changes (e.g., filtering results) here
        print('Search query: $text');
      },
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
class BoxInSetFilter extends StatelessWidget {
  BoxInSetFilter({Key? key,
     required this.onpressed,
  required this.iconSet,

  }) : super(key: key);
  VoidCallback onpressed;
  Icon iconSet;
  // Icon iconDown;
  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (onpressed){},
        decoration: InputDecoration(
          prefixIcon:iconSet,
          // suffixIcon: iconDown,
          border:OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),),),)
    );
  }
}
class JobTybBox extends StatelessWidget {
  JobTybBox({Key? key,required this.name,this.borderbox, this.height, });
  String name;
  var borderbox;
  var height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(name)),
      width: 88.w,
      height: height,
      decoration: BoxDecoration(
          border: borderbox,
          color: Color(0XFFD6E4FF), borderRadius: BorderRadius.circular(20)),
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


class AppBarThreeWidget extends StatelessWidget {
  AppBarThreeWidget({
    Key? key,required this.onpressed,required this.Tilte,
  }) : super(key: key);
  VoidCallback onpressed;
  String Tilte;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed:onpressed, icon:Icon(Icons.arrow_back_rounded)),
        Text('$Tilte',style: TextStyle(fontSize:25.sp ,fontWeight: FontWeight.w500),),
        IconButton(onPressed: (){}, icon: Icon(Icons.save))
      ],);
  }
}


class DescriptionDetailsJob extends StatelessWidget {
  const DescriptionDetailsJob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Twitter • Jakarta, Indonesia',
      style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 10),
    );
  }
}

class TitleJobDetails extends StatelessWidget {
  const TitleJobDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Senior UI Designer',
      style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18),
    );
  }
}
