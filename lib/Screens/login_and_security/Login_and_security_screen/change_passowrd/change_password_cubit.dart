import 'package:flutter_bloc/flutter_bloc.dart';

enum PasswordVisibility1 { visible1, hidden1 }

class PasswordVisibilityCubit1 extends Cubit<PasswordVisibility1> {
  PasswordVisibilityCubit1() : super(PasswordVisibility1.hidden1);

  void toggleVisibility1() {
    emit(state == PasswordVisibility1.hidden1
        ? PasswordVisibility1.visible1
        : PasswordVisibility1.hidden1);
  }
}

enum PasswordVisibility2 { visible2, hidden2 }

class PasswordVisibilityCubit2 extends Cubit<PasswordVisibility2> {
  PasswordVisibilityCubit2() : super(PasswordVisibility2.hidden2);

  void toggleVisibility2() {
    emit(state == PasswordVisibility2.hidden2
        ? PasswordVisibility2.visible2
        : PasswordVisibility2.hidden2);
  }
}

enum PasswordVisibility3 { visible3, hidden3 }

class PasswordVisibilityCubit3 extends Cubit<PasswordVisibility3> {
  PasswordVisibilityCubit3() : super(PasswordVisibility3.hidden3);

  void toggleVisibility3() {
    emit(state == PasswordVisibility3.hidden3
        ? PasswordVisibility3.visible3
        : PasswordVisibility3.hidden3);
  }
}