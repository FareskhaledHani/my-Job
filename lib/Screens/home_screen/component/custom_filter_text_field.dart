import 'package:flutter/material.dart';

class CustomFilterTextField extends StatelessWidget {
 const CustomFilterTextField({Key? key,
    required this.onSubmitted,
    required this.iconSet,
  }) : super(key: key);
 final Function(String value) onSubmitted;
 final Icon iconSet;
  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: onSubmitted,
        decoration: InputDecoration(
          prefixIcon:iconSet,
          border:const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),),),)
    );
  }
}