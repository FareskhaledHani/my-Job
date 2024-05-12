import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstDateCubit extends Cubit<DateTime?> {
  final TextEditingController startController;

  FirstDateCubit(this.startController) : super(null);

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      emit(picked);
      startController.text = picked.toString().split(" ")[0];
    }
  }
}
class EndDateCubit extends Cubit<DateTime?> {
  final TextEditingController endController;

  EndDateCubit(this.endController) : super(null);

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      emit(picked);
      endController.text = picked.toString().split(" ")[0];
    }
  }
}