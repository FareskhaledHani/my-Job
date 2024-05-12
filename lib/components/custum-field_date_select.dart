import 'package:flutter/material.dart';

class FieldUsedInDate extends StatelessWidget {
  const FieldUsedInDate({
    required this.controller,
    required this.onPressed,
    required this.validator,
    Key? key,
  }) : super(key: key);
  final VoidCallback onPressed;
 final  TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        readOnly: true,
      validator: validator,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.calendar_month_outlined,
              color: Colors.black,
            ),
            onPressed: onPressed,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ));
  }
}