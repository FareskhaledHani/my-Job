import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../generated/l10n.dart';

class CustomPhoneField extends StatelessWidget {
 const CustomPhoneField({ required this.onchange,
    Key? key,
   // required this.validator,
  }) : super(key: key);
  final Function(dynamic phone) onchange;
 // final Future<String?> Function(PhoneNumber?) validator;
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(

        // validator: validator,
      decoration: InputDecoration(
        labelText: S.of(context).PhoneNumber,
        border: const OutlineInputBorder(
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