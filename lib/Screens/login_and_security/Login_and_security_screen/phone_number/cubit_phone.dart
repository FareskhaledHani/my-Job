import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchCubit extends Cubit<bool> {
  SwitchCubit() : super(false); // Initial state is false (switch off)

  void toggleSwitch(bool newValue) {
    emit(newValue);
  }
}