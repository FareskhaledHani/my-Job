part of 'get_favorite_cubit.dart';

@immutable
abstract class GetFavoriteState {}

class GetFavoriteInitial extends GetFavoriteState {}
class GetFavoriteJobLoadingState extends GetFavoriteState {}
class GetFavoriteJobSuccessState extends GetFavoriteState {
  final List<GetFavoriteJob> getFavoriteJobsList;
  GetFavoriteJobSuccessState(this.getFavoriteJobsList);
}
class GetFavoriteJobFailureState extends GetFavoriteState {
  final String errorMessage;
  GetFavoriteJobFailureState({required this.errorMessage});
}


