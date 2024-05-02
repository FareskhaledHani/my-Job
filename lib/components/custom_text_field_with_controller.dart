import 'package:flutter/material.dart';

class CustomPasswordTextFieldController extends StatelessWidget {
  // late Function(String password) onSubmitted;
  const CustomPasswordTextFieldController(
      {Key? key,
        //required this.onSubmitted,
        // required this.controller,
        required this.icon,
        required this.obscureText, required this.hintText,required this.controller,required this.validator})
      : super(key: key);
  final IconButton icon;
  final  bool obscureText;
  final  String hintText;
  final String? Function(String?)? validator;

  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
       controller: controller,
      // onSubmitted: onSubmitted,

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