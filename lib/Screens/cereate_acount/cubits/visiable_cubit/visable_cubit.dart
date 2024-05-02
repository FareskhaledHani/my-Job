import 'package:flutter_bloc/flutter_bloc.dart';

enum PasswordVisibilityCreate { visible, hidden }

class PasswordVisibilityCreateCubit extends Cubit<PasswordVisibilityCreate> {
  PasswordVisibilityCreateCubit() : super(PasswordVisibilityCreate.hidden);

  void toggleVisibility() {
    emit(state == PasswordVisibilityCreate.hidden
        ? PasswordVisibilityCreate.visible
        : PasswordVisibilityCreate.hidden);
  }
}