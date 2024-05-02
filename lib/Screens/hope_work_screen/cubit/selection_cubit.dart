
import 'package:finalproject/Screens/hope_work_screen/cubit/selection_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectionCubit extends Cubit<SelectionState> {
  SelectionCubit(int itemCount)
      : super(SelectionState(List.filled(itemCount, false)));

  void toggleSelection(int index) {
    final List<bool> updatedList = List.from(state.selectedList);
    updatedList[index] = !updatedList[index];
    emit(SelectionState(updatedList));
  }
}