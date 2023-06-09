import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class nextButton extends StatelessWidget {
   nextButton({
    required this.buttonText,required this.onpressed
  });
  String  buttonText;
  VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(buttonText),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            primary: Colors.blue),
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
