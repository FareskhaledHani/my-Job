import 'package:flutter_bloc/flutter_bloc.dart';


/////////////////full container
enum SelectFull { initial, selectedFull }

class FullContainer extends Cubit<SelectFull> {
  FullContainer() : super(SelectFull.initial);
  void changeColorFull() {
    emit(state == SelectFull.initial ? SelectFull.selectedFull : SelectFull.initial);
  }

}

/////////////////Part container
enum SelectPart { initial, selectedPart }

class PartContainer extends Cubit<SelectPart> {
  PartContainer() : super(SelectPart.initial);
  void changeColorPart() {
    emit(state == SelectPart.initial ? SelectPart.selectedPart : SelectPart.initial);
  }
}
/////////////////Part container
enum HybridFull { initial, selectHybrid }

class HybridContainer extends Cubit<HybridFull> {
  HybridContainer() : super(HybridFull.initial);
  void changeColorHybrid() {
    emit(state == HybridFull.initial ? HybridFull.selectHybrid : HybridFull.initial);
  }
}
/////////////////Part container
enum AnyFull { initial, selectedAnyFull }

class AnyFullContainer extends Cubit<AnyFull> {
  AnyFullContainer() : super(AnyFull.initial);
  void changeColorAny() {
    emit(state == AnyFull.initial ? AnyFull.selectedAnyFull : AnyFull.initial);
  }
}