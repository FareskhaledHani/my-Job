import 'package:flutter/material.dart';

class CustomFilterTextField extends StatelessWidget {
 const CustomFilterTextField({Key? key,
    // required this.onSubmitted,
    required this.iconSet,
    required this.controller,required this.validator,
  }) : super(key: key);
 final TextEditingController controller;
 final  String? Function(String?)? validator;
 // final Function(dynamic value) onSubmitted;
 final Icon iconSet;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validator ,
      controller: controller,

        // onChanged: onSubmitted,
        decoration: InputDecoration(
          prefixIcon:iconSet,
          border:const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),),),)
    );
  }
}