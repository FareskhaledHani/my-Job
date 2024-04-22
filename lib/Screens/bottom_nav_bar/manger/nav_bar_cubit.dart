import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavbarInitial());

  static NavBarCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(BottomNavState());
  }
}
