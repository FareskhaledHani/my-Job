import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';

class Rejected extends StatelessWidget {
  const Rejected({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset('images/apply_job/Data Ilustration (2).png'),
          Text(
           S.of(context).NoApplicationsWereRejected,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 24, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            S.of(context).IfThereIsAnApplicationThatIsRejectedByTheCompanyItWillAppearHere,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
