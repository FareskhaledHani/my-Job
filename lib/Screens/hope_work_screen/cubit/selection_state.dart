
class SelectionState {
  final List<bool> selectedList;

  SelectionState(this.selectedList);
}

// Define the events to interact with the selection
abstract class SelectionEvent {}

class ToggleSelectionEvent extends SelectionEvent {
  final int index;

  ToggleSelectionEvent(this.index);
}
