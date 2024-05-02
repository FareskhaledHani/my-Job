import 'package:flutter/material.dart';

class CustomFieldEmpty extends StatelessWidget {
  const CustomFieldEmpty({
    Key? key,required this.validator, required this.initialValue, required this.hintText,required this.onChange,
  }) : super(key: key);
  final String? Function(String?)? validator;
  final String initialValue;
  final String hintText;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        initialValue: initialValue,
        validator: validator,
        onChanged: onChange,
        decoration:  InputDecoration(
          hintText: hintText,
          // suffixIcon: iconDown,
          border:const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),),),)
    );
  }
}