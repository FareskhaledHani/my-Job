import 'package:flutter/material.dart';

class CustomFieldEmptyController extends StatelessWidget {
  const CustomFieldEmptyController({
    Key? key,required this.validator, required this.hintText, required this.controller
  }) : super(key: key);
  final String? Function(String?)? validator;
  // final String initialValue;
  final String hintText;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: controller,
        // initialValue: initialValue,
        validator: validator,
        decoration:  InputDecoration(
          hintText: hintText,
          // suffixIcon: iconDown,
          border:const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),),),)
    );
  }
}