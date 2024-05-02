import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatelessWidget {
 // late Function(String password) onSubmitted;
 const CustomPasswordTextField(
      {Key? key,
        //required this.onSubmitted,
        // required this.controller,
        required this.icon,
        required this.obscureText, required this.hintText,required this.onChange,required this.validator})
      : super(key: key);
 final IconButton icon;
final  bool obscureText;
final  String hintText;
 final void Function(String)? onChange;
  // dynamic controller;
 final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      // controller: controller,
     // onSubmitted: onSubmitted,
      onChanged: onChange,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        prefixIcon: const Icon(
          Icons.lock_outlined,
        ),
        suffixIcon: icon,
        hintText: hintText
      ),
    );
  }
}