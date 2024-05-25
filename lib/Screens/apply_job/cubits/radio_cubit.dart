import 'package:bloc/bloc.dart';

enum RadioButtonValue { SeniorUxDesigner, SeniorUiDesigner, FlutterDeveloper,GraphicDesigner }

class RadioButtonCubit extends Cubit<RadioButtonValue> {
  RadioButtonCubit() : super(RadioButtonValue.SeniorUxDesigner);

  void selectRadioButton(RadioButtonValue value) {
    emit(value);
  }
}