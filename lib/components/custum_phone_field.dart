import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustumPhoneField extends StatelessWidget {
  CustumPhoneField({ required this.onchange,
    Key? key,
  }) : super(key: key);
  Function(dynamic phone) onchange;
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      decoration: InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.all(
            Radius.circular(10),),
        ),
      ),
      initialCountryCode: 'EG',
      onChanged:onchange,
      // print(phone.completeNumber);

    );
  }
}