part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}
class GetSearchJobLoadingState extends SearchState {}
class GetSearchJobSuccess extends SearchState {
  final List<Job> jobs;
  GetSearchJobSuccess(this.jobs);
}
class GetSearchJobFailureState extends SearchState {
  final String errorMessage;
  GetSearchJobFailureState({required this.errorMessage});
}


