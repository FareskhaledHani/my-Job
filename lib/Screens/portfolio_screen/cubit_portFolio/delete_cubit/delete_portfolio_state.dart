part of 'delete_portfolio_cubit.dart';

@immutable
abstract class DeletePortfolioState {}

class DeletePortfolioInitial extends DeletePortfolioState {}
class DeletePortfolioLoadingState extends DeletePortfolioState {}
class DeletePortfolioSuccess extends DeletePortfolioState {}
class DeletePortfolioFailureState extends DeletePortfolioState {
  final String errorMessage;
  DeletePortfolioFailureState({required this.errorMessage});
}
