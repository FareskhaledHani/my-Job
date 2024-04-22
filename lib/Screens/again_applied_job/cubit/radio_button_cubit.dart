import 'package:bloc/bloc.dart';

class RadioButtonCubit extends Cubit<int> {
  RadioButtonCubit() : super(1);

  void setSelectedIndex(int index){
    emit(index);
  }
}
