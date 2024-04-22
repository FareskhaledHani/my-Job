part of 'filter_cubit.dart';

@immutable
abstract class FilterState {}

class FilterInitial extends FilterState {}
class GetFilterJobLoadingState extends FilterState {}
class GetFilterJobSuccess extends FilterState {
  final List<JobFilter> jobsFilter;
  GetFilterJobSuccess(this.jobsFilter);
}
class GetFilterJobFailureState extends FilterState {
  final String errorMessage;
  GetFilterJobFailureState({required this.errorMessage});
}


