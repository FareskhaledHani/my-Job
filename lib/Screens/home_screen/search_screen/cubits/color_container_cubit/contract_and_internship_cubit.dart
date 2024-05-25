import 'package:flutter_bloc/flutter_bloc.dart';


/////////////////full container
enum SelectContract { initial, selectedContract }

class ContractContainer extends Cubit<SelectContract> {
  ContractContainer() : super(SelectContract.initial);
  void changeColorContract() {
    emit(state == SelectContract.initial ? SelectContract.selectedContract : SelectContract.initial);
  }

}

/////////////////Part container
enum SelectInternship { initial, selectedInternship }

class InternshipContainer extends Cubit<SelectInternship> {
  InternshipContainer() : super(SelectInternship.initial);
  void changeColorInternship() {
    emit(state == SelectInternship.initial ? SelectInternship.selectedInternship : SelectInternship.initial);
  }
}
/////////////////Part container
enum HybridInternship { initial, selectInternship }

class HybridInternshipContainer extends Cubit<HybridInternship> {
  HybridInternshipContainer() : super(HybridInternship.initial);
  void changeColorHybrid() {
    emit(state == HybridInternship.initial ? HybridInternship.selectInternship : HybridInternship.initial);
  }
}
/////////////////Part container
enum AnyInternship { initial, selectedAnyInternship }

class AnyInternshipContainer extends Cubit<AnyInternship> {
  AnyInternshipContainer() : super(AnyInternship.initial);
  void changeColorAny() {
    emit(state == AnyInternship.initial ? AnyInternship.selectedAnyInternship : AnyInternship.initial);
  }
}