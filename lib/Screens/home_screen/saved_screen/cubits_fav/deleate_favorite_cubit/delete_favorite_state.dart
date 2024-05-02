part of 'delete_favorite_cubit.dart';

@immutable
abstract class DeleteFavoriteState {}

class DeleteFavoriteInitial extends DeleteFavoriteState {}
class DeleteFavoriteJobLoadingState extends DeleteFavoriteState {}
class DeleteFavoriteJobSuccess extends DeleteFavoriteState {}
class DeleteFavoriteJobFailureState extends DeleteFavoriteState {
  final String errorMessage;
  DeleteFavoriteJobFailureState({required this.errorMessage});
}
