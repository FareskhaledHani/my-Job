import 'package:flutter_bloc/flutter_bloc.dart';

// Define the possible states of the bookmark icon
enum BookmarkState { unBookMarked, bookMarked }

class BookmarkCubit extends Cubit<BookmarkState> {
  BookmarkCubit() : super(BookmarkState.unBookMarked); // Start with unbookmarked state

  void toggleBookmark() {
    // Toggle between unbookmarked and bookmarked states
    emit(state == BookmarkState.unBookMarked ? BookmarkState.bookMarked : BookmarkState.unBookMarked);
  }
}