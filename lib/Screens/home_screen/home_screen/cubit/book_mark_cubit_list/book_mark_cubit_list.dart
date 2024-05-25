import 'package:flutter_bloc/flutter_bloc.dart';

class BookmarkCubitList extends Cubit<List<int>> {
  BookmarkCubitList() : super([]);

  void toggleBookmark(int index) {
    if (state.contains(index)) {
      state.remove(index);
    } else {
      state.add(index);
    }
    emit(List<int>.from(state));
  }
}