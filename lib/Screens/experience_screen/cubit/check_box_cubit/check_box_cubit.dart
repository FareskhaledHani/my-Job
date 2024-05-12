import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'check_box_state.dart';

class CheckBoxCubit extends Cubit<CheckBoxState> {
  CheckBoxCubit() : super(CheckBoxInitial());
  void toggleCheckbox(bool value) {
    emit(CheckboxChecked(value));
  }
}
