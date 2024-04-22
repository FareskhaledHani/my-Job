import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ContainerColor { Personal ,Education, Experience, Portfolio,selected }

class ContainerColorCubit extends Cubit<ContainerColor> {
  ContainerColorCubit() : super(ContainerColor.selected);

  void changeColor(ContainerColor color) {
    emit(color);
  }


}