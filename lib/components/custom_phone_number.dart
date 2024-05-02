
import 'package:flutter/material.dart';

class CustomPhoneNumberField extends StatelessWidget {
  const CustomPhoneNumberField({Key? key,
    // required this.onSubmitted,

    required this.validator,required this.onChange, required this.initialValue,
  }) : super(key: key);

  final  String? Function(String?)? validator;
  final void Function(String)? onChange;
  // final Function(dynamic value) onSubmitted;

  final String initialValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      keyboardType: TextInputType.number,
        validator:validator ,
       onChanged:onChange ,
        // onChanged: onSubmitted,
        decoration: const InputDecoration(
          prefixIcon:Icon(Icons.phone_android_rounded),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),),),)
    );
  }
}