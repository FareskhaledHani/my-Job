import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailCustumTextField extends StatelessWidget {
  EmailCustumTextField({
    required this.onPressed,required this.icon,required this.hint,
    Key? key,
  }) : super(key: key);
  String hint;
  Function(String value) onPressed;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onPressed,
      decoration: InputDecoration(
          prefixIcon: Icon(icon),
          prefixIconColor: Colors.black,
          fillColor: Colors.red,
          hoverColor: Colors.green,
          focusColor: Colors.deepPurple,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          hintText: hint),
    );
  }
}