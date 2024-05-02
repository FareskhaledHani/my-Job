import 'package:flutter_bloc/flutter_bloc.dart';

class CarouselCubit extends Cubit<int> {
  CarouselCubit() : super(0);
  void setPage(int index) => emit(index);
}