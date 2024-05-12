import 'package:flutter/material.dart';

class CustomFieldWithPrefixIcon extends StatelessWidget {
  const CustomFieldWithPrefixIcon({
    Key? key,
    required this.validator, required this.controller, required this.hintText, required this.prefixIcon, required this.onTap,
  }) :  super(key: key);
  final String hintText;
  final Icon prefixIcon;
  final VoidCallback onTap;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      onTap:onTap,
      decoration: InputDecoration(
        hintText:hintText ,
        prefixIcon:prefixIcon ,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}