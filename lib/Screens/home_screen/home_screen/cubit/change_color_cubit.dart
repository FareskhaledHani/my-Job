import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ColorEvent { changeColor }

// Define the Cubit
class ColorCubit extends Cubit<Color> {

  ColorCubit() : super(Colors.grey); // Initial color

  void changeColor() {
    emit(Colors.green); // Change color to green
  }
}