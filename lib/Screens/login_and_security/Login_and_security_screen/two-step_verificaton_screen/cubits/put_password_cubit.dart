import 'package:flutter_bloc/flutter_bloc.dart';

enum PasswordVisibility { visible, hidden }

class PasswordVisibilityCubit extends Cubit<PasswordVisibility> {
  PasswordVisibilityCubit() : super(PasswordVisibility.hidden);

  void toggleVisibility() {
    emit(state == PasswordVisibility.hidden
        ? PasswordVisibility.visible
        : PasswordVisibility.hidden);
  }
}