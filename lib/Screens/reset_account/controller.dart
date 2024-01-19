import 'package:get/get.dart';

class PasswordController extends GetxController{

  var isPasswordHidden = true.obs; // Using RxBool to observe changes

  void togglePasswordVisibility() {
    if (
    isPasswordHidden.isTrue
    ){isPasswordHidden.value=false;}else
    isPasswordHidden.value =true;
  }

}