part of 'post_portfolio_cubit.dart';

@immutable
abstract class PostPortfolioState {}

class PostPortfolioInitial extends PostPortfolioState {}
class PostPortfolioLoadingState extends PostPortfolioState {}
class PostPortfolioSuccess extends PostPortfolioState {
 // final int idFilePost;
 // PostPortfolioSuccess({required this.idFilePost});
}
class PostPortfolioFailureState extends PostPortfolioState {
  final String errorMessage;
  PostPortfolioFailureState({required this.errorMessage});
}