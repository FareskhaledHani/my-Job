import 'package:bloc/bloc.dart';

class RadioListCubit extends Cubit<String> {
  RadioListCubit (super.initialState);

  void radioCheck(updateValue){
    String _value = updateValue;
    emit(_value);
  }
}
