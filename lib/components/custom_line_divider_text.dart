import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class OrSineWithAnAccount extends StatelessWidget {
  const OrSineWithAnAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            height: 36,
            thickness: 2,
            endIndent: 20,
            indent: 20,
            color: Colors.grey[400],
          ),
        ),
        Text(
          S.of(context).OrSignUpWithAccount,
          style: const TextStyle(
              color: Color(0xFF6B7280), fontWeight: FontWeight.bold),
        ),
        Expanded(
            child: Divider(
              color: Colors.grey[400],
              height: 36,
              thickness: 2,
              endIndent: 20,
              indent: 20,
            ))
      ],
    );
  }
}