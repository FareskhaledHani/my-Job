import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationItem { Descriotion, Company, People }

class JobDetailsCubit extends Cubit<NavigationItem> {
  JobDetailsCubit() : super(NavigationItem.Descriotion);

  void navigateTo(NavigationItem item) {
    emit(item);
  }
}