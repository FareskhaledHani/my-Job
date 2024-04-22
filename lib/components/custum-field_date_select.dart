import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FieldUsedInDate extends StatelessWidget {
  FieldUsedInDate({
    required this.controller,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  VoidCallback onPressed;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black,
            ),
            onPressed: onPressed,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ));
  }
}