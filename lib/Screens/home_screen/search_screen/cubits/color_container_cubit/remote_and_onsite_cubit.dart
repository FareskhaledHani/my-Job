import 'package:flutter_bloc/flutter_bloc.dart';


/////////////////full container
enum SelectRemote { initial, selectedRemote }

class RemoteContainer extends Cubit<SelectRemote> {
  RemoteContainer() : super(SelectRemote.initial);
  void changeColorRemote() {
    emit(state == SelectRemote.initial ? SelectRemote.selectedRemote : SelectRemote.initial);
  }

}

/////////////////Part container
enum SelectOnSite { initial, selectedOnSite }

class OnSiteContainer extends Cubit<SelectOnSite> {
  OnSiteContainer() : super(SelectOnSite.initial);
  void changeColorOnsite() {
    emit(state == SelectOnSite.initial ? SelectOnSite.selectedOnSite : SelectOnSite.initial);
  }
}
/////////////////Part container
enum HybridRemote { initial, selectHybrid }

class HybridRemoteContainer extends Cubit<HybridRemote> {
  HybridRemoteContainer() : super(HybridRemote.initial);
  void changeColorHybrid() {
    emit(state == HybridRemote.initial ? HybridRemote.selectHybrid : HybridRemote.initial);
  }
}
/////////////////Part container
enum AnyRemote { initial, selectedAnyFull }

class AnyRemoteContainer extends Cubit<AnyRemote> {
  AnyRemoteContainer() : super(AnyRemote.initial);
  void changeColorAny() {
    emit(state == AnyRemote.initial ? AnyRemote.selectedAnyFull : AnyRemote.initial);
  }
}