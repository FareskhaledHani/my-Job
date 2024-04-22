import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatelessWidget {
 // late Function(String password) onSubmitted;
  CustomPasswordTextField(
      {Key? key,
        //required this.onSubmitted,
        required this.controller,
        required this.icon,
        required this.obscureText, required this.hintText})
      : super(key: key);
 final IconButton icon;
final  bool obscureText;
final  String hintText;
  dynamic controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
     // onSubmitted: onSubmitted,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        prefixIcon: Icon(
          Icons.lock_outlined,
        ),
        suffixIcon: icon,
        hintText: hintText
      ),
    );
  }
}