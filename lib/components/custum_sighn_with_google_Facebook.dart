import 'package:flutter/cupertino.dart';

import '../Screens/slider_screen/extract_widget.dart';
import '../generated/l10n.dart';
import 'custom_container_logo.dart';

class SighnWithGoogleAndFaceBook extends StatelessWidget {
  const SighnWithGoogleAndFaceBook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // GoogleSignInButton(onPressed: (){},),
      Expanded(
        flex: 1,
        child: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ButtonSinWith(onPressed: (){}, image: 'images/create_acount/google.png', textIcon: S.of(context).Google,)
        ),
      ),

      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child:  ButtonSinWith(textIcon: S.of(context).FaceBook, image: 'images/create_acount/Facebook.png', onPressed: (){},),
        ),
      ),
    ],);
  }
}