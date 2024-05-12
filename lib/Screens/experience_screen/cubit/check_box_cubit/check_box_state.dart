part of 'check_box_cubit.dart';

@immutable
abstract class CheckBoxState {}

class CheckBoxInitial extends CheckBoxState {}
class CheckboxChecked extends CheckBoxState {
  final bool checked;

  CheckboxChecked(this.checked);
}
