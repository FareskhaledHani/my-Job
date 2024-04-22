import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownCubit extends Cubit<String> {
  DropdownCubit() : super('Option 1'); // Set default selected value
  List<DropdownMenuItem<String>>items=[
    // DropdownMenuItem(child: Text('UI UX'),value: 'UI  UX', ),DropdownMenuItem(child: Text('option 2'))
  ];
  String dropDownValue='one';

  void setSelectedValue(String value) => emit(value);

}
