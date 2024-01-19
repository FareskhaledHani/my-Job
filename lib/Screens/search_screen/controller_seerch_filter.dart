import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerSearchFilter extends GetxController{

  bool change =false;
  Rx<Color> containerColor = (Color(0xFFFAFAFA)).obs;
  // var containerColor =  Color (0xFFFAFAFA);

   // var containerColorBorder =  Color(0xFFD1D5DB) ;
  changeColorContainer() {

 change=!change;

 //   if(change=false){
     // containerColor.value = Color (0xFFD6E4FF);
     // containerColorBorder.value = Color(0xFF3366FF) ;



   // } else  {
     // containerColor.value =    Color(0xFFFAFAFA) ;
      //containerColorBorder.value =   Color(0xFFD1D5DB) ;

    //}


  }
  //   Rx<Color> containerColorBorder = (Color(0xFFD1D5DB)).obs;
  // changeColorBorder() {
  //   containerColor.value = Color(0xFF3366FF);

  // }
  Rx<Color> containerColorBorder = (Color(0xFFD1D5DB)).obs;
  Rx<Color> containerColorBorderFalse = (Color(0xFF3366FF)).obs;
  Rx<Color> colorOffiice = (Color(0xFF091A7A).obs);
  Rx<Color> colorRemote = (Color(0xFFF4F4F5).obs);
  changeColorOffice(){
    colorOffiice.value = Color(0xFFF4F4F5);
    colorRemote.value = Color(0xFF091A7A);
  }
  changeColorRemote(){
    colorOffiice.value=Color(0xFF091A7A);
    colorRemote.value=Color(0xFFF4F4F5);
  }
}